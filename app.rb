#!/usr/bin/env ruby

require 'rubygems'
require "mini_magick"


files = Dir["./input/*.jpeg"]
files = files + Dir["./input/*.jpg"]
files = files + Dir["./input/*.png"]

files.each do |file|

  image = MiniMagick::Image.open(file)
  image.path #=> "/var/folders/k7/6zx6dx6x7ys3rv3srh0nyfj00000gn/T/magick20140921-75881-1yho3zc.jpg"
  image.resize "1000x1000"
  image.write "./output/#{file.split('/').last}"

end
