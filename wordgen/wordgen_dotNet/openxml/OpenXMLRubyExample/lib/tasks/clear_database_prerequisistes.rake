# Remove database checks so that the rails app can run without a database connection
["test:units", "test:functionals", "test:integration","test:recent"].each do |name|
  Rake::Task[name].prerequisites.clear
end
