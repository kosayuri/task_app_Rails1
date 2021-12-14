class Post < ApplicationRecord
    validates :title, {presence: true, length: {maximum:20}}
    validates :startday, presence: true
    validates :endday, presence: true
    validates :memo, {presence: true}
    validate :start_end_check

    def start_end_check
        errors.add(:endday, "は開始日より前の日付で登録できません。") if self.startday.nil? ||  self.endday.nil? || self.startday > self.endday
    end
end
