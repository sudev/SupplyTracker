# frozen_string_literal: true

ActiveAdmin.register ReliefCamp do
  permit_params :name, :coordinator_id, :latitude, :longitude, :address, :phone_number, :whatsapp_number, :email, :contact_person
  actions :new, :create, :show, :edit, :update, :index

  filter :name
  filter :email

  index do
    selectable_column
    id_column
    column :name
    column :coordinator
    column :location do |relief_camp|
      "(#{relief_camp.latitude},#{relief_camp.longitude})"
    end
    column :contact_person
    column :phone_number
    column :address
    actions
  end
end
