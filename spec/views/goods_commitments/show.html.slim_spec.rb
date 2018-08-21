require 'rails_helper'

RSpec.describe "goods_commitments/show", type: :view do
  before(:each) do
    @goods_commitment = assign(:goods_commitment, GoodsCommitment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
