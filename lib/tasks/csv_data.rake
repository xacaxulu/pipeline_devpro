require 'csv'
namespace :clients do
  desc "Creates Clients From CSV"
  task :load => :environment do
   p = PipeScrape.new
   p.load
  end
end