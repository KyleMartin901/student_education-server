require 'rails_helper'

RSpec.describe Lesson, type: :model do
  describe "attributes" do
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :position }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :position }

    it { is_expected.to validate_uniqueness_of :position }
  end
end
