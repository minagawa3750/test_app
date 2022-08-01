class User < ApplicationRecord
  validates :title, presence: true
  validates :start_day, presence: true
  validates :finish_day, presence: true
  validates :free_check, default: false, null: false
  validate :date_before_start
  validate :date_before_finish
end

def date_before_start
    return if start_day.blank?
    errors.add(:start_day, "は今日以降のものを選択してください") if start_day < Date.today
end

def date_before_finish
    return if finish_day.blank? || start_day.blank?
    errors.add(:finish_day, "は開始日以降のものを選択してください") if finish_day < start_day
end

