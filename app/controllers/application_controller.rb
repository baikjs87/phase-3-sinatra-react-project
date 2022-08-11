class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/locations" do
    locations = Location.all
    locations.to_json(include: [:things_to_dos, :places_to_gos])
  end

  get "/locations/:id" do
    locations = Location.find(params[:id])
    locations.to_json
  end

  get "/locations/:id/places_to_go" do
    places = Location.find(params[:id]).places_to_gos
    places.to_json
  end

  get "/locations/:id/things_to_do" do
    things = Location.find(params[:id]).things_to_dos
    things.to_json
  end

end
