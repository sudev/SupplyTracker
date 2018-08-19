class ModeOfTransportsController < InheritedResources::Base

  private

    def mode_of_transport_params
      params.require(:mode_of_transport).permit(:name, :code)
    end
end

