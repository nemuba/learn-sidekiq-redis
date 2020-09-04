class AuditJob < ApplicationJob
  queue_as :default

  def perform(table)
    sleep 20
    Audit.create(table_name: table.class, key: table.id)
  end
end
