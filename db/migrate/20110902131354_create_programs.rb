class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.references :division
      t.references :funnel_stage
      t.references :opportunity_type
      t.timestamps 
    end
  end
end
