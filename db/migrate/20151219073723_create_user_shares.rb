class CreateUserShares < ActiveRecord::Migration
  def change
    create_table :user_shares do |t|

      t.timestamps null: false
    end
  end
end
