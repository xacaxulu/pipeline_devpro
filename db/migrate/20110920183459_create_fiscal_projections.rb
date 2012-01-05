class CreateFiscalProjections < ActiveRecord::Migration
  def change
    create_table :fiscal_projections do |t|
      
      t.references :year
      t.references :program
      t.integer :january
      t.integer :february
      t.integer :march
      t.integer :april
      t.integer :may
      t.integer :june
      t.integer :july
      t.integer :august
      t.integer :september
      t.integer :october
      t.integer :november
      t.integer :december
      t.string :comment

      t.timestamps
    end
  end
end
