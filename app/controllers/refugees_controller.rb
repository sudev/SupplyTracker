class RefugeesController < InheritedResources::Base

  private

    def refugee_params
      params.require(:refugee).permit(:name, :latitude, :longitude, :location, :address, :phone_number, :whatsapp_number, :email, :relief_camp_id, :contact1, :contact2, :contact3)
    end
end

