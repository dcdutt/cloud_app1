class MicrosoftsController < ApplicationController
  # GET /microsofts
  # GET /microsofts.xml
  def index
    @microsofts = Microsoft.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microsofts }
    end
  end

  # GET /microsofts/1
  # GET /microsofts/1.xml
  def show
    @microsoft = Microsoft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @microsoft }
    end
  end

  # GET /microsofts/new
  # GET /microsofts/new.xml
  def new
    @microsoft = Microsoft.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @microsoft }
    end
  end

  # GET /microsofts/1/edit
  def edit
    @microsoft = Microsoft.find(params[:id])
  end

  # POST /microsofts
  # POST /microsofts.xml
  def create
    @microsoft = Microsoft.new(params[:microsoft])

    respond_to do |format|
      if @microsoft.save
        flash[:notice] = 'Microsoft was successfully created.'
        format.html { redirect_to(@microsoft) }
        format.xml  { render :xml => @microsoft, :status => :created, :location => @microsoft }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @microsoft.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microsofts/1
  # PUT /microsofts/1.xml
  def update
    @microsoft = Microsoft.find(params[:id])

    respond_to do |format|
      if @microsoft.update_attributes(params[:microsoft])
        flash[:notice] = 'Microsoft was successfully updated.'
        format.html { redirect_to(@microsoft) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @microsoft.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microsofts/1
  # DELETE /microsofts/1.xml
  def destroy
    @microsoft = Microsoft.find(params[:id])
    @microsoft.destroy

    respond_to do |format|
      format.html { redirect_to(microsofts_url) }
      format.xml  { head :ok }
    end
  end
end
