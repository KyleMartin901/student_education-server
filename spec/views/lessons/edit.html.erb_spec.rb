require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :title => "MyString",
      :position => 1
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_title[name=?]", "lesson[title]"

      assert_select "input#lesson_position[name=?]", "lesson[position]"
    end
  end
end
