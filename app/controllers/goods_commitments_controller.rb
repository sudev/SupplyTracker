class GoodsCommitmentsController < InheritedResources::Base

  private

  def goods_commitment_params
    params.require(:goods_commitment).permit(:name, :email, :phone_number, :available_from, :location, :latitude,
         :longitude, inventories_attributes: [:item_category_id, :item_type_id,
        :item_subtype_id, :item_unit_id, :quantity, :area_id, :latitude, :longitude, :address, :initial_quantity,
        :available_quantity, :source, :volunteer_id, :contact_number, :contact_name, :available_from, :_destroy])
  end
end
