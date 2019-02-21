class CreateTradingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :trading_records do |t|
    	t.integer :commodity_id
      t.integer :employee_id
      t.integer :quantity, comment: "数量"
      t.float :discount, comment: "折扣"
      t.float :discount_price, comment: "折扣后价格"
      t.float :total_amount, comment: "总金额"
      t.string :operator, comment: "经办人"
      t.integer :year
      t.integer :month
      t.timestamps
    end
  end
end
