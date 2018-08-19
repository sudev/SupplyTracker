class RequirementsController < InheritedResources::Base

  private

    def requirement_params
      params.require(:requirement).permit()
    end
end

