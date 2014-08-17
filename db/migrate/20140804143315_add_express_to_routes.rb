class AddExpressToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :express, :boolean
  end
end
