class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :startday
      t.date :endday
      t.boolean :allday
      t.text :memo

      t.timestamps
    end
  end
end
