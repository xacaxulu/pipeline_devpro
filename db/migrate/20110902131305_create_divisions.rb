class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.references :client
      t.references :practice_group
      t.string :name
      t.timestamps
    end
  end
end
