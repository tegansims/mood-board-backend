class ChangeEmotionsTypeFromDecimalToReal < ActiveRecord::Migration[6.0]
  def change
    change_column :emotions, :angry, :real
    change_column :emotions, :happy, :real
    change_column :emotions, :excited, :real
    change_column :emotions, :fear, :real
    change_column :emotions, :sad, :real
    change_column :emotions, :bored, :real
  end
end
