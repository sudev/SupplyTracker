class ItemSubtypesController < InheritedResources::Base

  private

    def item_subtype_params
      params.require(:item_subtype).permit(:name, :code, :item_type_id)
    end
end

