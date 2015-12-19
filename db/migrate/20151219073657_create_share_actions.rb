class CreateShareActions < ActiveRecord::Migration
  def change
    create_table :share_actions do |t|
      t.references :share, index: true, foreign_key: true
      t.float :current_value
      t.string :week_change
      t.string :year_change
      t.string :trading_status
      t.string :trades
      t.float :value
      t.string :volume
      t.float :capitalisation
      t.float :open
      t.float :high
      t.float :low
      t.float :high_bid
      t.float :low_offer
      t.string :shares_issued
      t.string :gross_div_yield
      t.float :nta
      t.float :eps
      t.string :pe
      t.timestamps null: false
    end
  end
end
