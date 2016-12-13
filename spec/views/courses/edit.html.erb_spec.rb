require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :name => "MyString",
      :description => "MyText",
      :notes => "MyText",
      :video_link => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "textarea#course_description[name=?]", "course[description]"

      assert_select "textarea#course_notes[name=?]", "course[notes]"

      assert_select "input#course_video_link[name=?]", "course[video_link]"

      assert_select "input#course_price[name=?]", "course[price]"
    end
  end
end
