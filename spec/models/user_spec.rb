require 'rails_helper'

RSpec.describe User, type: :model do
  describe "attributes" do
    it { is_expected.to have_attribute :name }
  end

  describe "relationships" do
    it { is_expected.to have_many :part_completions }
    it { is_expected.to belong_to :teacher }
  end
end
