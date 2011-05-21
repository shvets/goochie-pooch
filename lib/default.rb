# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering

def menu_style value
  {:class => @item[:menu] == value ? "current_page_item" : ""}
end

require "rubygems" # you use rubygems
require "image_size"
require "open-uri"

def imagesize file_name
  open(file_name, "rb") do |f|
    ImageSize.new(f.read).get_size
  end
end

module Nanoc3::DataSources

  # Provides functionality common across all filesystem data sources.
  module Filesystem
    def layouts
      load_objects('content/layouts', 'layout', Nanoc3::Layout)
    end
  end
end

