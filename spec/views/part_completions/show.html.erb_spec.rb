require 'rails_helper'

RSpec.describe "part_completions/show", type: :view do
  before(:each) do
    @part_completion = assign(:part_completion, PartCompletion.create!(
      :student => nil,
      :lesson_part => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
