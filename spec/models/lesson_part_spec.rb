require 'rails_helper'

RSpec.describe LessonPart, type: :model do
  describe "attributes" do
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :position }
    it { is_expected.to have_attribute :lesson_id }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :position }

    it { should validate_uniqueness_of(:position).scoped_to(:lesson_id) }
  end

  describe "relationships" do
    it { is_expected.to belong_to :lesson }
  end
end
