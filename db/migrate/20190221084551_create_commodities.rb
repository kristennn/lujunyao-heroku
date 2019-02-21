class CreateCommodities < ActiveRecord::Migration[5.2]
  def change
    create_table :commodities do |t|
    	t.integer :commodity_code, comment: "商品编码"
    	t.string :commodity_type_name, comment: "商品种类名称"
    	t.integer :commodity_type_code, comment: "商品种类编码"
    	t.string :name, comment: "商品名称"
    	t.string :unit, comment: "计量单位"
    	t.string :standart, comment: "规格型号"
    	t.float :purchase_price, comment: "进货价格"
    	t.float :selling_price, comment: "销售价格"
      t.timestamps
    end
  end
end
