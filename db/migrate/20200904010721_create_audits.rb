class CreateAudits < ActiveRecord::Migration[5.2]
  def change
    create_table :audits do |t|
      t.string :table_name
      t.integer :key

      t.timestamps
    end
  end
end
