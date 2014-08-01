class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.decimal :km_real
      t.decimal :km_plasma

      t.timestamps
    end
  end
end
