# encoding: UTF-8

class Admin::ExamplesController < AdminController

  def index
    @examples = Example.all
  end

end
