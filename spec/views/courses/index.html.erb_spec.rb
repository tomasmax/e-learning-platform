require 'rails_helper'

RSpec.describe "courses/index", type: :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :name => "Name",
        :description => "MyText",
        :notes => "MyText",
        :video_link => "Video Link",
        :price => 2.5
      ),
      Course.create!(
        :name => "Name",
        :description => "MyText",
        :notes => "MyText",
        :video_link => "Video Link",
        :price => 2.5
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video Link".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
