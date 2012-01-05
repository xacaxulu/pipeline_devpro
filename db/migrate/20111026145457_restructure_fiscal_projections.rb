class RestructureFiscalProjections < ActiveRecord::Migration
  def up
    add_column :fiscal_projections, :month, :integer
    add_column :fiscal_projections, :amount, :integer
    add_column :fiscal_projections, :year, :integer
    
    remove_column :fiscal_projections, :year_id
    remove_column :fiscal_projections, :january
    remove_column :fiscal_projections, :february
    remove_column :fiscal_projections, :march
    remove_column :fiscal_projections, :april
    remove_column :fiscal_projections, :may
    remove_column :fiscal_projections, :june
    remove_column :fiscal_projections, :july
    remove_column :fiscal_projections, :august
    remove_column :fiscal_projections, :september
    remove_column :fiscal_projections, :october
    remove_column :fiscal_projections, :november
    remove_column :fiscal_projections, :december
  end

  def down
    remove_column :fiscal_projections, :month
    remove_column :fiscal_projections, :amount
    remove_column :fiscal_projections, :year
    
    add_column :fiscal_projections, :year_id, :integer
    add_column :fiscal_projections, :january, :integer
    add_column :fiscal_projections, :february, :integer
    add_column :fiscal_projections, :march, :integer
    add_column :fiscal_projections, :april, :integer
    add_column :fiscal_projections, :may, :integer
    add_column :fiscal_projections, :june, :integer
    add_column :fiscal_projections, :july, :integer
    add_column :fiscal_projections, :august, :integer
    add_column :fiscal_projections, :september, :integer
    add_column :fiscal_projections, :october, :integer
    add_column :fiscal_projections, :november, :integer
    add_column :fiscal_projections, :december, :integer
  end
end