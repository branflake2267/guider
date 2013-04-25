require 'test/unit'
require 'guider/app'

class RunTest < Test::Unit::TestCase
  def testrun
    
    options = {
      :input => File.expand_path("./guides"),
      :output => Dir.pwd + "/out",
      :title => "title",
      :footer => "footer",
      :link_url => "http://localhost/extjs/",
      :tpl_dir => File.dirname(File.dirname(File.dirname(__FILE__))) + "/template",
      :warnings => true,
      :social => ["google","twitter","facebook"],
      :search => "search",
      :analytics => "analytics",
      :styles => "styles",
      :index => "guides.json",
    }
    
    Guider::App.new(options).run
  end
end