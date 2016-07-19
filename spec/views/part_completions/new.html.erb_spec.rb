require 'rails_helper'

RSpec.describe "part_completions/new", type: :view do
  before(:each) do
    assign(:part_completion, PartCompletion.new(
      :student => nil,
      :lesson_part => nil
    ))
  end

  it "renders new part_completion form" do
    render

    assert_select "form[action=?][method=?]", part_completions_path, "post" do

      assert_select "input#part_completion_student_id[name=?]", "part_completion[student_id]"

      assert_select "input#part_completion_lesson_part_id[name=?]", "part_completion[lesson_part_id]"
    end
  end
end
