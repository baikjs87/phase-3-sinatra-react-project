class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/locations" do
    locations = Location.all.order(:city)
    locations.to_json(include: [:things_to_dos, :places_to_gos])
  end
  
  get "/locations/:id" do
    locations = Location.find(params[:id])
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
end
