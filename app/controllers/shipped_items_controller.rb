class ShippedItemsController < InheritedResources::Base

  private

    def shipped_item_params
      params.require(:shipped_item).permit()
    end
end

