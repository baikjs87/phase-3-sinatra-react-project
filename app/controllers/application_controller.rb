class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/locations" do
    locations = Location.all.order(:city)
    locations.to_json(include: [:things_to_dos, :places_to_gos])
  end

  get "/locations/:id" do
    locations = Location.find(params[:id])
    locations.to_json
  end

  get "/places_to_go" do
    places = PlacesToGo.all
    places.to_json
  end

  get "/places_to_go/:id" do
    things = PlacesToGo.find(params[:id])
    things.to_json
  end

  get "/things_to_do" do
    places = ThingsToDo.all
    places.to_json
  end

  get "/things_to_do/:id" do
    things = ThingsToDo.find(params[:id])
    things.to_json
  end

end
