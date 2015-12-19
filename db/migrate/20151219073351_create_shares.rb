class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.string :issued_by
      t.string :isin
      t.string :security_type
      t.string :sector
      t.string :website_address
      t.timestamps null: false
    end
  end
end
