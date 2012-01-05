class CreateFunnelStages < ActiveRecord::Migration
  def change
    create_table :funnel_stages do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
