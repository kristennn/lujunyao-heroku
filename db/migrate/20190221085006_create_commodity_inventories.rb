class CreateCommodityInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :commodity_inventories do |t|
    	t.integer :commodity_id
    	t.boolean :operate_type, comment: "出入库类型"
    	t.integer :quantity, comment: "数量"
    	t.integer :current_inventory, comment: "当前库存"
    	t.float :freight, comment: "运费"
    	t.string :operator, comment: "经办人"
    	t.integer :year
    	t.integer :month
      t.timestamps
    end
  end
end
