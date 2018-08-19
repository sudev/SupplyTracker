class ItemSubTypesController < InheritedResources::Base

  private

    def item_sub_type_params
      params.require(:item_sub_type).permit()
    end
end

