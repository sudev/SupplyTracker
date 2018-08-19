class RefugeesController < InheritedResources::Base

  private

    def refugee_params
      params.require(:refugee).permit()
    end
end

