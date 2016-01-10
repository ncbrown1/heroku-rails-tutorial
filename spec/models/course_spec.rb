require 'rails_helper'

RSpec.describe Course, :type => :model do
  let (:course_instance) { Course.create(dept: "Math", num: "3A", desc: "Calculus") }
  describe "public instance methods" do
    context "responds to its methods" do
      it { expect(course_instance).to respond_to(:course_num) }
    end
  end
end
