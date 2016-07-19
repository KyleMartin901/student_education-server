require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :title => "MyString",
      :position => 1
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input#lesson_title[name=?]", "lesson[title]"

      assert_select "input#lesson_position[name=?]", "lesson[position]"
    end
  end
end
