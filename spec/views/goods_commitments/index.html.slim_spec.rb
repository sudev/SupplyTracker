require 'rails_helper'

RSpec.describe "goods_commitments/index", type: :view do
  before(:each) do
    assign(:goods_commitments, [
      GoodsCommitment.create!(),
      GoodsCommitment.create!()
    ])
  end

  it "renders a list of goods_commitments" do
    render
  end
end
