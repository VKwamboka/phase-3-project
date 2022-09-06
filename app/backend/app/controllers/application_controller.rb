class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # ALL POEMS
  get '/poems' do
    poems = Poem.all
    poems.to_json
  end

  # ALL POEM AUTHORS
  get '/poemauthors' do
    poemauthors = Author.all
    poemauthors.to_json
  end

  # All POEM CATEGORIES
  get '/poemcategories' do
    poemcategories = Category.all
    poemcategories.to_json
  end

  # ALL INSPIRATIONS
  get '/inspirations' do
    inspirations = Inspiration.all
    inspirations.to_json
  end

  # ALL INSPIRATIONS AUTHORS
  get '/inspirationauthors' do
    inspirationauthors = InspirationAuthor.all
    inspirationauthors.to_json
  end

  # All INSPIRATIONS CATEGORIES
  get '/inspirationcategories' do
    inspirationcategories = InspirationCategory.all
    inspirationcategories.to_json
  end

end
