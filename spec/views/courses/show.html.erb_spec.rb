require 'rails_helper'

RSpec.describe "courses/show", :type => :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :dept => "Dept",
      :num => "Num",
      :desc => "Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dept/)
    expect(rendered).to match(/Num/)
    expect(rendered).to match(/Desc/)
  end
end
