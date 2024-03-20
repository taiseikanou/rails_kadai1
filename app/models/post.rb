class Post < ApplicationRecord
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :title, length: {maximum:20}
    validates :memo, length: {maximum:500}
    validate :end_date_after_start_date

  def end_date_after_start_date
    if end_date && end_date <= start_date
      errors.add(:end_date)
    end
  end
end
