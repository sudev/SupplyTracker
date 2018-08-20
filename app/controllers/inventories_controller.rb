class InventoriesController < InheritedResources::Base

  private

    def inventory_params
      params.require(:inventory).permit(:item_category_id, :item_type_id, :item_sub_type_id, :item_unit_id, :quantity, :area_id, :latitude, :longitude, :address, :initial_quantity, :available_quantity, :source, :volunteer_id, :contact_number, :contact_name, :available_from)
    end
end

