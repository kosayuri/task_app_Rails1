class ChangeColumnsAddNotnullOnPost < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :startday, false
    change_column_null :posts, :endday, false
  end
end
