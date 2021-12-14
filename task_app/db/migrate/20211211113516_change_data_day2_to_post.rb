class ChangeDataDay2ToPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :startday, :date, null: false
    change_column :posts, :endday, :date, null: false
  end
end
