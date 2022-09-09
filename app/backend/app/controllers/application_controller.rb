class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
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

  delete "/inspirations/:id" do
    inspiration = Inspiration.find(params[:id])
    inspiration.destroy
    inspuration.to_json
  end

  post "/inspirations" do
    inspiration = Inspiration.create(
      title: params[:title], 
      body: params[:body], 
      authors_id: params[:authors_id], 
      categories_id: params[:categories_id]
    )
    inspiration.to_json
  end

  patch "/inspirations/:id" do
    inspiration = Inspiration.find(params[:id])
    inspiration.update(
      title: params[:title],
      body: params[:body]
    )
  end

end
