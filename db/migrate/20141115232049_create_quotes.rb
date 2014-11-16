class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :symbol
      t.decimal :previous_close, precision: 10, scale: 2
      t.decimal :last_trade_price_only, precision: 10, scale: 2

      t.timestamps
    end
  end
end
