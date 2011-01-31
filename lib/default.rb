# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering

def menu_style value
  {:class => @item[:menu] == value ? "current_page_item" : ""}
end