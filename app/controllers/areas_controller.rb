class AreasController < InheritedResources::Base

  private

    def area_params
      params.require(:area).permit(:name, :code, :area_id)
    end
end

