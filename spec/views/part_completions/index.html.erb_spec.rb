require 'rails_helper'

RSpec.describe "part_completions/index", type: :view do
  before(:each) do
    assign(:part_completions, [
      PartCompletion.create!(
        :student => nil,
        :lesson_part => nil
      ),
      PartCompletion.create!(
        :student => nil,
        :lesson_part => nil
      )
    ])
  end

  it "renders a list of part_completions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
