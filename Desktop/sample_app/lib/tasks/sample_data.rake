require 'faker'

namespace :db do
   desc "Fill database with sample data"
   task :populate => :environment do
     Rake::Task['db:reset'].invoke
     admin = User.create!(:name => "Ankit Chachada",
                          :email => "ankit@ankit.com",
                          :password => "ankit123",
                          :password_confirmation => "ankit123")
    admin.toggle!(:admin)
     
                 
     99.times do |n|
       name = Faker::Name.name
       email = "example-#{n+1}@ankit.com"
       password = "password"
       User.create!(:name => name,
                    :email => email,
                    :password => password,
                    :password_confirmation => password)
     end
                   
   end
end