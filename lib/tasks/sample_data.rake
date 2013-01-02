require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Test User", :email => "test@example.com",
                         :password => "testing", :password_confirmation => "testing")
    admin.toggle!(:admin)

    99.times do |n|
      User.create!(:name => Faker::Name.name, :email => Faker::Internet.email, 
                   :password => "password", :password_confirmation => "password")
    end
  end
end
