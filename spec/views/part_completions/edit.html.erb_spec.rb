require 'rails_helper'

RSpec.describe "part_completions/edit", type: :view do
  before(:each) do
    @part_completion = assign(:part_completion, PartCompletion.create!(
      :student => nil,
      :lesson_part => nil
    ))
  end

  it "renders the edit part_completion form" do
    render

    assert_select "form[action=?][method=?]", part_completion_path(@part_completion), "post" do

      assert_select "input#part_completion_student_id[name=?]", "part_completion[student_id]"

      assert_select "input#part_completion_lesson_part_id[name=?]", "part_completion[lesson_part_id]"
    end
  end
end
