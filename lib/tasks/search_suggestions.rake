namespace :search_suggestions do
  desc "Generate search suggestions from bubbles"
  task :index => :environment do
    SearchSuggestion.index_bubbles
  end
end