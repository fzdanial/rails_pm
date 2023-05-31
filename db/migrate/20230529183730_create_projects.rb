class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :task
      t.string :remark
      t.string :status
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
