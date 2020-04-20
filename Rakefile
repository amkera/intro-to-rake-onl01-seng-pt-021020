task :environment do
  require_relative './config/environment'
end

#It is possible to namespace your Rake tasks. What does "namespace" mean? A namespace is really just a way to group or contain something, in this case our Rake tasks.

#Now, to use either of our Rake tasks, we use the following syntax:

#rake greeting:hello
#hello from Rake!
 
#rake greeting:hola
#hola de Rake!

desc 'outputs hello to the terminal'
namespace :greeting do 
  task :hello do 
    puts "hello from Rake!"
  end

  desc 'outputs hola to the terminal'
  task :hola do 
    puts "hola de Rake!"
  end
end

#One common pattern you'll soon become familiar with is the pattern of writing code that creates database tables and then "migrating" that code using a rake task.

#Our Student class currently has a #create_table method, so let's use that method to build out our own migrate Rake task.

#We'll namespace this task under the db heading. This namespace will contain a few common database-related tasks.

#We'll call this task migrate, because it is a convention to say we are "migrating" our database by applying SQL statements that alter that database.


namespace :db do 
  desc 'migrate changes to your database' 
  task :migrate => :environment do
    #That line creates a task dependency. See the line requiring the environment file at the top of this code. This line is necessary.
    Student.create_table
  end

  desc 'seed the database with some dummy data'
    task :seed do 
      require_relative './db/seeds.rb'
    end
end 

#We'll define a task that starts up the Pry console. We'll make this task dependent on our environment task so that the Student class and the database connection load first.

desc 'drop into the Pry console'
task :console => :environment do
  Pry.start 
end