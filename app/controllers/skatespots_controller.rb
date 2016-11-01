class SkatespotsController < ApplicationController
  get "/" do
    @spots      = Skatespot.all
    @skatespots = Skatespot.all.to_json

    haml :'skatespots/index'
  end
end
