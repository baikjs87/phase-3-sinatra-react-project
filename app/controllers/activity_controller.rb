class ActivityController < Sinatra::Base
    set :default_content_type, 'application/json'

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