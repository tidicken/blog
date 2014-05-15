class BlogNamesController < ApplicationController
  before_action :set_blog_name, only: [:show, :edit, :update, :destroy]

  # GET /blog_names
  # GET /blog_names.json
  def index
    @blog_names = BlogName.all
  end

  # GET /blog_names/1
  # GET /blog_names/1.json
  def show
  end

  # GET /blog_names/new
  def new
    @blog_name = BlogName.new
  end

  # GET /blog_names/1/edit
  def edit
  end

  # POST /blog_names
  # POST /blog_names.json
  def create
    @blog_name = BlogName.new(blog_name_params)

    respond_to do |format|
      if @blog_name.save
        format.html { redirect_to @blog_name, notice: 'Blog name was successfully created.' }
        format.json { render :show, status: :created, location: @blog_name }
      else
        format.html { render :new }
        format.json { render json: @blog_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_names/1
  # PATCH/PUT /blog_names/1.json
  def update
    respond_to do |format|
      if @blog_name.update(blog_name_params)
        format.html { redirect_to @blog_name, notice: 'Blog name was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_name }
      else
        format.html { render :edit }
        format.json { render json: @blog_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_names/1
  # DELETE /blog_names/1.json
  def destroy
    @blog_name.destroy
    respond_to do |format|
      format.html { redirect_to blog_names_url, notice: 'Blog name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_name
      @blog_name = BlogName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_name_params
      params.require(:blog_name).permit(:author)
    end
end
