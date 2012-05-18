class TraineesController < ApplicationController
  # GET /trainees
  # GET /trainees.xml
  def index
    @trainees = Trainee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trainees }
    end
  end

  # GET /trainees/1
  # GET /trainees/1.xml
  def show
    @trainee = Trainee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trainee }
    end
  end

  # GET /trainees/new
  # GET /trainees/new.xml
  def new
    @trainee = Trainee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trainee }
    end
  end

  # GET /trainees/1/edit
  def edit
    @trainee = Trainee.find(params[:id])
  end

  # POST /trainees
  # POST /trainees.xml
  def create
    @trainee = Trainee.new(params[:trainee])

    respond_to do |format|
      if @trainee.save
        format.html { redirect_to(@trainee, :notice => 'Trainee was successfully created.') }
        format.xml  { render :xml => @trainee, :status => :created, :location => @trainee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trainee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trainees/1
  # PUT /trainees/1.xml
  def update
    @trainee = Trainee.find(params[:id])

    respond_to do |format|
      if @trainee.update_attributes(params[:trainee])
        format.html { redirect_to(@trainee, :notice => 'Trainee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trainee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trainees/1
  # DELETE /trainees/1.xml
  def destroy
    @trainee = Trainee.find(params[:id])
    @trainee.destroy

    respond_to do |format|
      format.html { redirect_to(trainees_url) }
      format.xml  { head :ok }
    end
  end
end
