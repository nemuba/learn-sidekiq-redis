class AddActionToAudit < ActiveRecord::Migration[5.2]
  def change
    add_column :audits, :action, :string
  end
end
