class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :number
      t.string :label

      t.timestamps
    end
  end
end
