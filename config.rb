###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Pretty URLs (pages as directory indexes)
activate :directory_indexes
# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes
# Reload the browser automatically whenever files change
activate :livereload
# Markdown configuration
set :markdown_engine, :kramdown
set :markdown, :layout_engine => :erb, 
               :tables => true, 
               :autolink => true,
               :smartypants => true

# Methods defined in the helpers block are available in templates
helpers do
  def typekit(kit)
    '<script type="text/javascript" src="//use.typekit.net/' + kit + '.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>'
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  activate :minify_css
  # activate :minify_javascript
  activate :asset_hash # Cache buster
  # activate :relative_assets # Use relative URLs
  # set :http_prefix, "/Content/images/" # Different image path
end
