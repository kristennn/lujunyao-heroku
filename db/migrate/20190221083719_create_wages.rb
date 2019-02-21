class CreateWages < ActiveRecord::Migration[5.2]
  def change
    create_table :wages do |t|
    	t.integer :employee_id
    	t.float :gross_salary, comment: "应发工资"
    	t.float :gross_cash, comment: "应发现金"
    	t.float :gross_virtual_money, comment: "应发易货币"
    	t.float :net_cash, comment: "实发现金"
    	t.float :net_virtual_money, comment: "实发易货币"
    	t.float :accumulative_cash, comment: "累计应发现金"
    	t.float :accumulative_virtual_money, comment: "累计应发易货币"
    	t.integer :year
    	t.integer :month
      t.timestamps
    end
  end
end
