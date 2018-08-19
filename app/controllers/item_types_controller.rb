class ItemTypesController < InheritedResources::Base

  private

    def item_type_params
      params.require(:item_type).permit()
    end
end

