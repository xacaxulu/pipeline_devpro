module FiscalProjectionsHelper
  def sorted_month_indexes
    return @sorted_month_indexes unless @sorted_month_indexes.blank?
    
    @sorted_month_indexes = [].tap do |months|

      current_month.upto(12) {|i| months.push(i)}

      if months.size != 12
        n = 12 - months.size
        for i in 1..n do 
          months.push(i) 
        end
      end
    end
  end
  
  def current_year
    @current_year ||= Time.now.year
  end
 
  def current_month
    @current_month ||= Time.now.month
  end

  def months
    @months ||= ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september','october', 'november', 'december']
  end
  
  # def sorted_month_names
  #   @sorted_month_names ||= self.months.rotate(current_month-1)
  # end
  
  def get_fiscal_projection(month, year, program_id)
    @fiscal_projections.detect{|projection| projection.program_id==program_id && projection.month==month && projection.year==year} || FiscalProjection.new
  end
  
  def sorted_months
    @sorted_months ||= [].tap do |months|
      sorted_month_indexes.each do |month|
        months << { :id => month, :year  => month < current_month ? current_year + 1 : current_year}
      end
    end
  end
  
end
