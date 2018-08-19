class ItemCategoriesController < InheritedResources::Base

  private

    def item_category_params
      params.require(:item_category).permit()
    end
end

