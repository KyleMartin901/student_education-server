FactoryGirl.define do

  factory :user, :aliases => [:student] do
    sequence :name do |n|
      "foobar#{n}"
    end
  end

  factory :lesson do
    sequence :title do |n|
      "L#{n}"
    end
    sequence :position do |n|
      n
    end
  end

  factory :lesson_part do
    sequence :title do |n|
      "P#{n}"
    end
    sequence :position do |n|
      n
    end
  end
end
