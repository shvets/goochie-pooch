set :site_url, "http://www.goochie-pooch.com"

set :build_dir, "public"

set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :images_dir, "assets/images"

set :markdown_engine, :redcarpet

set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true,
    gh_blockcode: true, lax_spacing: true

set :haml, { ugly: true }

configure :development do
  activate :syntax, :line_numbers => true
end

configure :build do
  activate :syntax, :line_numbers => true
end

page "/coupon.html", :layout => "printable"

helpers do
  def menu_style value
    #{:class => @item[:menu] == value ? "current_page_item" : ""}
    {:class => "current_page_item" }
  end

  def imagesize file_name
    #require "image_size"
##require "open-uri"

    open(file_name, "rb") do |f|
      ImageSize.new(f.read).get_size
    end
 end
end

