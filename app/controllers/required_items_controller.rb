class RequiredItemsController < InheritedResources::Base

  private

    def required_item_params
      params.require(:required_item).permit()
    end
end

