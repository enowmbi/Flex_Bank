# import namespace "db"
namespace :flex do 
  description = "This task clears and updates flex tests databases"
  desc "#{description}"
  task :prepdb => :environment do 
    puts  "#{description}"
end

  # task :import => :environment do 
    # require 'contact.csv'
    # CSV.foreach(contact.csv) do |row|
      # name = row[0]
      # address = row[1]
      # phone = row[2]
      # email = row[3]
      # puts row.inspect
    # end

  # end
end
