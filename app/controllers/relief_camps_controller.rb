class ReliefCampsController < InheritedResources::Base

  private

  def relief_camp_params
    params.require(:relief_camp).permit(:name, :coordinator_id, :latitude, :longitude, :address, :phone_number, :whatsapp_number,
                                        :email, :contact_person, :district_id, :code, :location, :area_id)
  end
end
