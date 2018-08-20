class RequirementsController < InheritedResources::Base

  private

    def requirement_params
      params.require(:requirement).permit(:relief_camp_id, :location_id, :area_id, :user_id, :requested_at, :requester, :request_mode, :priority)
    end
end

