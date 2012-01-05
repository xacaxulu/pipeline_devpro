module FunnelstagesHelper
  
  def year_select_options
    Time.now.year.upto(2020)
  end
end
