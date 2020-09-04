class AuditJob < ApplicationJob
  queue_as :default

  rescue_from(ActiveRecord::RecordNotFound) do |exception|
    puts "Dados não foram encontrados."
  end

  def perform(task_id, action)
    Audit.create(table_name: 'Task', key: task_id, action: action)
  end
end
