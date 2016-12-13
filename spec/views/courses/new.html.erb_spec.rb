require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :name => "MyString",
      :description => "MyText",
      :notes => "MyText",
      :video_link => "MyString",
      :price => 1.5
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_name[name=?]", "course[name]"

      assert_select "textarea#course_description[name=?]", "course[description]"

      assert_select "textarea#course_notes[name=?]", "course[notes]"

      assert_select "input#course_video_link[name=?]", "course[video_link]"

      assert_select "input#course_price[name=?]", "course[price]"
    end
  end
end
