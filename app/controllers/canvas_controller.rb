class CanvasController < ApplicationController
  # GET /canvas
  # GET /canvas.xml
  def index
#    @canvas = Canva.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @canvas }
    end
  end

  # GET /canvas/1
  # GET /canvas/1.xml
  def show
    @canva = Canva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @canva }
    end
  end

  # GET /canvas/new
  # GET /canvas/new.xml
  def new
    @canva = Canva.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @canva }
    end
  end

  # GET /canvas/1/edit
  def edit
    @canva = Canva.find(params[:id])
  end

  # POST /canvas
  # POST /canvas.xml
  def create
    @canva = Canva.new(params[:canva])

    respond_to do |format|
      if @canva.save
        format.html { redirect_to(@canva, :notice => 'Canva was successfully created.') }
        format.xml  { render :xml => @canva, :status => :created, :location => @canva }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @canva.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /canvas/1
  # PUT /canvas/1.xml
  def update
    @canva = Canva.find(params[:id])

    respond_to do |format|
      if @canva.update_attributes(params[:canva])
        format.html { redirect_to(@canva, :notice => 'Canva was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @canva.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /canvas/1
  # DELETE /canvas/1.xml
  def destroy
    @canva = Canva.find(params[:id])
    @canva.destroy

    respond_to do |format|
      format.html { redirect_to(canvas_url) }
      format.xml  { head :ok }
    end
  end
end
