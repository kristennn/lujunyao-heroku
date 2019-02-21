class CreateUpdateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :update_events do |t|
    	t.integer :event_id, comment: "事件id"
    	t.string :table_name, comment: "表格名称"
    	t.string :field_name, comment: "字段名称"
    	t.string :field_old_value, comment: "字段旧值"
    	t.string :field_new_value, comment: "字段新值"
      t.timestamps
    end
  end
end
