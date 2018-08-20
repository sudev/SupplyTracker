# frozen_string_literal: true

require 'net/http'

BASE_URL = 'https://keralarescue.in/relief_camps/data?offset='

offset = 0
more_exists = true
last_record_id = 1_000_000_000
camp_attributes = []
districts_id_map = District.all.map {|d| [d.code, d.id]}.to_h # {alp: 1, etc.}

while more_exists
  response = Net::HTTP.get(URI.parse(BASE_URL + offset.to_s))
  results = JSON.parse(response).with_indifferent_access

  camp_attributes += results[:data].map do |camp_json|
    {
      id:             camp_json[:id],
      name:           camp_json[:name],
      address:        camp_json[:location],
      contact_person: camp_json[:contacts],
      district_id:    districts_id_map[camp_json[:district]],
    }
  end

  last_record_id = results[:meta][:last_record_id]
  max_id = camp_attributes.map { |ca| ca[:id] }.max
  more_exists = max_id.present? && max_id < last_record_id
  offset = max_id
end

SeedFu::Writer.write('db/fixtures/relief_camps.rb', class_name: 'ReliefCamp') do |writer|
  camp_attributes.each do |cattrs|
    writer.add(cattrs)
  end
end
