require 'rails_helper'

RSpec.describe "courses/new", :type => :view do
  before(:each) do
    assign(:course, Course.new(
      :dept => "MyString",
      :num => "MyString",
      :desc => "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_dept[name=?]", "course[dept]"

      assert_select "input#course_num[name=?]", "course[num]"

      assert_select "input#course_desc[name=?]", "course[desc]"
    end
  end
end
