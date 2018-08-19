class ItemConditionsController < InheritedResources::Base

  private

    def item_condition_params
      params.require(:item_condition).permit(:name, :code)
    end
end

