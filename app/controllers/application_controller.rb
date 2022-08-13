class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/locations" do
    locations = Location.all.order(:city)
    locations.to_json(include: [:things_to_dos, :places_to_gos])
  end

  post "/locations" do
    locations = Location.create(city: params[:city], url: params[:URL])
    locations.to_json(include: [:things_to_dos, :places_to_gos])
  end

  delete "/locations/:id" do
    locations = Location.find(params[:id])
    locations.destroy
    locations.to_json
  end
# ---------------------------- places_to_do
  get "/places_to_go" do
    places = PlacesToGo.all
    places.to_json
  end

  post "/places_to_go" do
    places = PlacesToGo.create(place: params[:place], location_id: params[:location_id])
    places.to_json
  end

  delete "/places_to_go/:id" do
    places_to_go = PlacesToGo.find(params[:id])
    places_to_go.destroy
    places_to_go.to_json
  end
 
  get "/places_to_go/:id" do
    things = PlacesToGo.find(params[:id])
    things.to_json
  end
# ---------------------------- things_to_do
  get "/things_to_do" do
    places = ThingsToDo.all
    places.to_json
  end

  get "/things_to_do/:id" do
    places = ThingsToDo.find(params[:id])
    places.to_json
  end

  post "/things_to_do" do
    things = ThingsToDo.create(activity: params[:activity], location_id: params[:location_id])
    things.to_json
  end

  delete "/things_to_do/:id" do
    things_to_do = ThingsToDo.find(params[:id])
    things_to_do.destroy
    things_to_do.to_json
  end
 
end
