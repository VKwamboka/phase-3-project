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
    # look up the game in the .;;
    poemauthors = Author.find(params[:id])
    # send a JSON-formatted response of the game data
    poemauthors.to_json
  end

  post "/poems" do
    poems = Poem.create(
      title: params[:title], 
      body: params[:body], 
      authors_id: params[:authors_id], 
      categories_id: params[:categories_id])
    poems.to_json
   
  end

  post "/poemauthors" do
    poemauthors = Author.create(name: params[:name])
    poemauthors.to_json
  end

  # All POEM CATEGORIES
  get '/poemcategories' do
    poemcategories = Category.all
    poemcategories.to_json
  end

  post "/poemcategories" do
    poemcategories = Category.create(name: params[:name])
    poemcategories.to_json
  end

  delete "/poemcategories/:id" do
    poemcategories = Category.find(params[:id])
    poemcategories.destroy
    poemcategories.to_json
  end

  patch "/poemcategories/:id"  do
    categories = Category.find(params[:id])
    categories.update(
      title: params[:title],
      body: params[:body]
    )
  end
end
 
