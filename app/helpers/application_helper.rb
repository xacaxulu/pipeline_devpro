module ApplicationHelper
   
  def pgroup_select_options
   [ "AG", "FS", "HC", "IG", "OTH" ]
  end

  def client_select_options
    @clients.each do |client|
      client.name
    end
  end
  
  def division_select_options
    @divisions.each do |division|
      division.name
    end
  end
  def program_select_options
    Program.all.map {|p| [p.name, p.id]}
  end
  
  
    
  def opportunity_select_options
    ["Technekes Only", "Partnered"]
  end
  
  def funnel_stage_select_options
    ["Scoped", "Closed", "SOW", "Opportunity", "Key Target", "No Longer and Opportunity", "Lost", "Conversation"].sort
  end
  
    

end
