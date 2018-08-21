class DistrictsController < InheritedResources::Base

  private
  def district_params
    params.require(:district).permit(:name, :code, :local_name,
                                     areas_attributes: [:name, :code, :tags, :district_id, :locality])
  end
end
