# frozen_string_literal: true

ActiveAdmin.register ReliefCamp do
  permit_params :name, :coordinator_id, :latitude, :longitude, :address, :phone_number, :whatsapp_number, :email, :contact_person, :district_id, :code
  actions :new, :create, :show, :edit, :update, :index

  filter :name
  filter :email
  filter :district
  filter :code

  index do
    selectable_column
    id_column
    column :name
    column :code
    column :contact_person
    column :location do |relief_camp|
      relief_camp.latitude.present? && relief_camp.longitude.present? ? "(#{relief_camp.latitude},#{relief_camp.longitude})" : 'N/A'
    end
    column :phone_number
    column :coordinator
    column :address
    column :district
    actions
  end
end
