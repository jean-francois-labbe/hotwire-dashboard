class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :band_name
      t.string :genre

      t.timestamps
    end
  end
end
