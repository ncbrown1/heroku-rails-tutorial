require 'rails_helper'

RSpec.describe "courses/edit", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :dept => "MyString",
      :num => "MyString",
      :desc => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_dept[name=?]", "course[dept]"

      assert_select "input#course_num[name=?]", "course[num]"

      assert_select "input#course_desc[name=?]", "course[desc]"
    end
  end
end
