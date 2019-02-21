class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
    	t.integer :job_number, comment: "工号"
    	t.string :name, comment: "姓名"
    	t.boolean :sex, comment: "性别"
    	t.string :birth_date, comment: "出生日期"
    	t.integer :age, comment: "年龄"
    	t.string :working_date, comment: "工作日期"
    	t.integer :working_years, comment: "工龄"
    	t.json :worktype, comment: "工种"
    	t.json :duty, comment: "职务"
    	t.json :department, comment: "部门"
      t.timestamps
    end
  end
end
