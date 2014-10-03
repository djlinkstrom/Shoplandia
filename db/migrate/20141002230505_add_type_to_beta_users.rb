class AddTypeToBetaUsers < ActiveRecord::Migration
  def change
    add_column :beta_users, :type, :string
  end
end
