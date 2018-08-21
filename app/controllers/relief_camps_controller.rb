class ReliefCampsController < InheritedResources::Base

  has_scope :has_district_id, as: :district_id
  has_scope :has_area_id, as: :area_id
  has_scope :has_name, as: :search

  private

  def relief_camp_params
    params.require(:relief_camp).permit(:name, :coordinator_id, :latitude, :longitude, :address, :phone_number, :whatsapp_number,
                                        :email, :contact_person, :district_id, :code, :location, :area_id)
  end
end
