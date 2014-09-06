class CreateBestUsers < ActiveRecord::Migration
  def change
    create_table :best_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
