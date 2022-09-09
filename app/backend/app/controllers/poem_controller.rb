class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
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

  # GET AUTHORS BY ID
  get '/poemauthors/:id' do
    # look up the game in the database using its ID
    poemauthors = Author.find(params[:id])
    # send a JSON-formatted response of the game data
    poemauthors.to_json
  end

  # All POEM CATEGORIES
  get '/poemcategories' do
    poemcategories = Category.all
    poemcategories.to_json
  end

  post "/poemcategories" do
    poemcategories = Category.create(body: params[:body])
    poemcategories.to_json
  end

#   patch "/inspirations/:id" do
#     inspiration = Inspiration.find(params[:id])
#     inspiration.update(
#       title: params[:title],
#       body: params[:body]
#     )
#   end
end
 
