require 'rails_helper'

RSpec.describe PartCompletion, type: :model do
  describe "attributes" do
    it { is_expected.to have_attribute :student_id }
    it { is_expected.to have_attribute :lesson_part_id }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of :lesson_part_id }
    it { is_expected.to validate_presence_of :student_id }

    #it { should validate_uniqueness_of(:student_id).scoped_to(:lesson_part_id) }
  end

  describe "relationships" do
    it { is_expected.to belong_to :lesson_part }
    it { should belong_to(:student).class_name('User') }
  end
end
