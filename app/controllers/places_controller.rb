class PlacesController < Sinatra::Base
  set :default_content_type, 'application/json'

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
end