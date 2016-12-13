require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :comment => "MyText",
        :rating => 2.5,
        :user => nil,
        :course => nil
      ),
      Review.create!(
        :comment => "MyText",
        :rating => 2.5,
        :user => nil,
        :course => nil
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
