class TemplateOnesController < ApplicationController
  before_action :set_template_one, only: [:show, :edit, :update, :destroy, :edit_about, :edit_services, :edit_process, :edit_header, :edit_contact, :edit_action, :edit_testimonial, :edit_portfolio_carousel, :edit_portfolio_carousel_heading, :edit_portfolio_grid, :edit_footer, :edit_navigation, :edit_newsletter] 
  before_action :authenticate_user!, except: [:show]
  before_action :not_admin_user, only: [:edit, :update, :destroy, :index]
  layout 'template_ones' 
  # GET /template_ones
  # GET /template_ones.json
  def index
    @template_ones = TemplateOne.all
  end

  # GET /template_ones/1
  # GET /template_ones/1.json
  def show
    # if current_user and not current_user.try(:admin?)
    if current_user && !current_user.try(:admin?)
      redirect_to posts_path 
    end
    @projects = Project.all
  end

  # GET /template_ones/new
  def new
    @template_one = TemplateOne.new
  end

  # GET /template_ones/1/edit
  def edit
  end

  # POST /template_ones
  # POST /template_ones.json
  def create
    @template_one = TemplateOne.new(template_one_params)

    respond_to do |format|
      if @template_one.save
        format.html { redirect_to @template_one, notice: 'Template one was successfully created.' }
        format.json { render :show, status: :created, location: @template_one }
      else
        format.html { render :new }
        format.json { render json: @template_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_ones/1
  # PATCH/PUT /template_ones/1.json
  def update
    respond_to do |format|
      if @template_one.update(template_one_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Template one was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_one }
      else
        format.html { render :edit }
        format.json { render json: @template_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_ones/1
  # DELETE /template_ones/1.json
  def destroy
    @template_one.destroy
    respond_to do |format|
      format.html { redirect_to template_ones_url, notice: 'Template one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_about
  end

  def edit_services
  end

  def edit_process
  end

  def edit_header
  end

  def edit_contact
  end

  def edit_action 
  end

  def edit_testimonial
  end

  def edit_portfolio_carousel
    @projects = Project.all
  end

  def edit_portfolio_carousel_heading
  end

  def edit_portfolio_grid
  end

  def edit_footer
  end

  def edit_navigation
  end

  def edit_newsletter
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_one
      @template_one = TemplateOne.find(1)
    end

    def not_admin_user
      if !current_user.try(:admin?)
        flash[:danger] = "This resource is not available."
        redirect_to root_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_one_params
      params.require(:template_one).permit(
        :about_image_show_default,
        :about_hide, 
        :about_title,
        :about_text,
        :about_text_2,
        :about_image,
        :service_hide,
        :service_icon_1,
        :service_title_1,
        :service_text_1,
        :service_icon_2,
        :service_title_2,
        :service_text_2,
        :service_icon_3,
        :service_title_3,
        :service_text_3,
        :service_icon_4,
        :service_title_4,
        :service_text_4,
        :service_title_5,
        :service_text_5,
        :process_hide, 
        :main_process_title,
        :main_process_title_text,
        :process_icon_1,
        :sub_title_1,
        :process_li_1,
        :process_li_2,
        :process_li_3,
        :process_li_4,
        :process_icon_2,
        :sub_title_2,
        :process_li_5,
        :process_li_6,
        :process_li_7,
        :process_li_8,
        :process_icon_3,
        :sub_title_3,
        :process_li_9,
        :process_li_10,
        :process_li_11,
        :process_li_12,
        :header_hide,
        :header_title, 
        :header_text,
        :header_image,
        :contact_hide,

        :action_hide,
        :action_text_1,
        :action_text_2,
        :action_text_3,
        :action_text_4,
        :action_text_5,
        :action_text_6,   
        :action_text_7,
        :action_button_text,
        :action_use_default_image,
        :action_image, 

        :tesimonial_hide,

        :portfolio_carousel_hide,

        :portfolio_carousel_heading_hide,

        :portfolio_grid_hide,

        :footer_hide,

        :navigation_hide,
        :navigation_title,

        :newsletter_hide

        )
    end
end


