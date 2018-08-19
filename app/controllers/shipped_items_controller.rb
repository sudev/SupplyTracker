class ShippedItemsController < InheritedResources::Base

  private

    def shipped_item_params
      params.require(:shipped_item).permit(:requirement_id, :item_category_id, :item_type_id, :item_sub_type_id, :item_unit_id, :quantity, :remark, :source_id, :destination, :relief_camp_id, :mode_of_transport, :current_location_id)
    end
end

