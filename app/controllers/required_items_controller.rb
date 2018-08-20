class RequiredItemsController < InheritedResources::Base

  private

    def required_item_params
      params.require(:required_item).permit(:requirement_id, :item_category_id, :item_type_id, :item_subtype_id, :item_unit_id, :item_condition_id, :quantity_requested, :quantity_provided, :quantity_needed, :status, :remark)
    end
end

