class SkatespotsController < ApplicationController
  get "/" do
    @spots      = Skatespot.all
    @skatespots = @spots.to_json

    haml :'skatespots/index'
  end
end
