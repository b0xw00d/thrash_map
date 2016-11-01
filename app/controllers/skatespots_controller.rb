class SkatespotsController < ApplicationController
  get "/" do
    @skatespots = Skatespot.all.to_json

    haml :'skatespots/index'
  end
end
