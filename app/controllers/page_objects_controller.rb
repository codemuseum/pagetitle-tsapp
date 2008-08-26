class PageObjectsController < ApplicationController
  include PageObjectsControllerHelper
  # Don't worry about finding the page object on show, edit, or update!  We're not writing to it.
  before_filter :find_page_object, :only => [ :destroy, :update_valid ]
  # before_filter :find_page_object, :only => [ :show, :edit, :update, :destroy, :update_valid ]
  
  # GET /page_objects
  # GET /page_objects.xml
  def index
    @page_objects = PageObject.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @page_objects }
    end
  end

  # GET /page_objects/1
  # GET /page_objects/1.xml
  def show
    set_html
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page_object }
    end
  end

  # GET /page_objects/new
  # GET /page_objects/new.xml
  def new
    @page_object = PageObject.new(params[:page_object])
    set_html

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page_object }
    end
  end

  # GET /page_objects/1/edit
  def edit
    set_html
    
    respond_to do |format|
      format.html # edit.html.erb
      format.xml  { render :xml => @page_object }
    end
  end

  # POST /page_objects
  # POST /page_objects.xml
  def create
    @page_object = PageObject.new(params[:page_object])

    respond_to do |format|
      if @page_object.save # We'll save it, and destroy it, but other than that we won't use it!
        flash[:notice] = 'PageObject was successfully created.'
        format.html { redirect_to(@page_object) }
        format.xml  { render :xml => @page_object, :status => :created, :location => @page_object }
      else
        set_html
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_object, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_objects/1
  # PUT /page_objects/1.xml
  def update

    respond_to do |format|
      if true # @page_object.update_attributes(params[:page_object]) -- no need!
        flash[:notice] = 'PageObject was successfully updated.'
        format.html { redirect_to(@page_object) }
        format.xml  { head :ok }
      else
        set_html
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_object, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_objects/1
  # DELETE /page_objects/1.xml
  def destroy
    @page_object.destroy

    respond_to do |format|
      format.html { redirect_to(page_objects_url) }
      format.xml  { head :ok }
    end
  end
end
