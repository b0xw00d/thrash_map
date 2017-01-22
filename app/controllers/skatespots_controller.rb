class SkatespotsController < ApplicationController
  get "/" do
    @spots      = Skatespot.all.sort_by(&:title)
    @skatespots = @spots.to_json

    haml :'skatespots/index'
  end
end
