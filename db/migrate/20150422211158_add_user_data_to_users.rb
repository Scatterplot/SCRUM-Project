class AddUserDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string, :after => :id
    add_column :users, :first_name, :string, :after => :last_name
    add_column :users, :phone, :string, :after => :first_name
  end
end
