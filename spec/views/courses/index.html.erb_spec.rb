require 'rails_helper'

RSpec.describe "courses/index", :type => :view do
  before(:each) do
    assign(:courses, [
      Course.create!(
        :dept => "Dept",
        :num => "Num",
        :desc => "Desc"
      ),
      Course.create!(
        :dept => "Dept",
        :num => "Num",
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of courses" do
    render
    assert_select "tr>td", :text => "Dept".to_s, :count => 2
    assert_select "tr>td", :text => "Num".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
