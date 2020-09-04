class AuditJob < ApplicationJob
  queue_as :default

  rescue_from(ActiveRecord::RecordNotFound) do |exception|
    puts "Dados não foram encontrados."
  end

  def perform(table, action)
    Audit.create(table_name: table.class, key: table.id, action: action)
  end
end
