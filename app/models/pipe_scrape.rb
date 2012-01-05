require 'csv'

class PipeScrape
  def load
    [Client, Division, Program, PracticeGroup, FunnelStage, OpportunityType, PracticeGroup, FiscalProjection].each do |model|
      model.delete_all
    end
    
    @file = CSV.open("2011_Pipeline.csv", { :headers => true, :return_headers => false, :skip_blanks => true })
    
    @file.each do |line|
      row = line.to_hash.with_indifferent_access
      client = Client.find_or_create_by_name(row["Client:"].strip)
      practice_group = PracticeGroup.find_or_create_by_name(row["Practice Group:".strip])
      division = Division.find_or_create_by_name_and_client_id_and_practice_group_id(row["Division:".strip], client.id, practice_group.id)
      funnel_stage = FunnelStage.find_or_create_by_name(row["Funnel Stage:".strip])
      opportunity_type = OpportunityType.find_or_create_by_name(row["Opportunity Type:".strip])
      program = Program.find_or_create_by_name_and_division_id_and_funnel_stage_id_and_opportunity_type_id(row["Program:".strip], division.id, funnel_stage.id, opportunity_type.id)
      
      ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'].each do |month|
        next if row[month].blank?
        FiscalProjection.create(
          :amount => row[month],
          :program_id  => program.id,
          :month => Time.utc(2011,month).month,
          :year => 2011)
      end
    end
  end  
end