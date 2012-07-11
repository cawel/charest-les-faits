class ExamplesController < ApplicationController

  def index
    @examples = Example.all
  end

  def show
    @example = Example.find(params[:id])
  end

  def new
    @example = Example.new
  end

  def edit
    @example = Example.find(params[:id])
  end

  def create
    # puts "reasons = #{params[:example][:reasons]}"
    # params[:example][:reasons] = params[:example][:reasons].map{|id| Reason.find(id)}
    @example = Example.new(params[:example])

    if @example.save
      redirect_to examples_path, notice: 'Example was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @example = Example.find(params[:id])

    if @example.update_attributes(params[:example])
      redirect_to @example, notice: 'Example was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @example = Example.find(params[:id])
    @example.destroy

    redirect_to examples_url
  end
end
