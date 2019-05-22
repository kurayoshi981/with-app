class Post < ApplicationRecord
  belongs_to :user

  validates :name, presence: true,
    length: { minimum: 2, maximum: 100, allow_blank: true}

  validates :profile, presence: true,
    length: { maximum: 1000, allow_blank: true}

  # validates :birthday, presence: true

  validates :age, presence: true,
    numericality: {
      only_integer: true,
      greater_than: 18,
      less_than: 65,
      allow_blank: true}

  validates :sex, inclusion: {in: [1, 2]}

  validates :job_type, presence: true,
    length: { maximum: 255, allow_blank: true}

  validates :work_location, presence: true,
    length: { maximum: 255, allow_blank: true}

  validates :skill, presence: true,
    length: { maximum: 255, allow_blank: true}

  validates :employment_status, presence: true,
    length: { maximum: 255, allow_blank: true}

  validates :salary, presence: true,
    numericality: {
      only_integer: true,
      greater_than: 1,
      less_than: 9999,
      allow_blank: true}
end
