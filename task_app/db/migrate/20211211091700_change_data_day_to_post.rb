class ChangeDataDayToPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :startday, :datetime, null: false
    change_column :posts, :endday, :datetime, null: false
  end
end
