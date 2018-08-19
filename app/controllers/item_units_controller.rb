class ItemUnitsController < InheritedResources::Base

  private

    def item_unit_params
      params.require(:item_unit).permit()
    end
end

