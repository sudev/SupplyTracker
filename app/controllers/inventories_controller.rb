class InventoriesController < InheritedResources::Base

  private

    def inventory_params
      params.require(:inventory).permit()
    end
end

