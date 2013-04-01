class RumorsController < ApplicationController
  # GET /rumors
  # GET /rumors.json
  def index
    @rumors = Rumor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rumors }
    end
  end

  # GET /rumors/1
  # GET /rumors/1.json
  def show
    @rumor = Rumor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rumor }
    end
  end

  # GET /rumors/new
  # GET /rumors/new.json
  def new
    @rumor = Rumor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rumor }
    end
  end

  # GET /rumors/1/edit
  def edit
    @rumor = Rumor.find(params[:id])
  end

  # POST /rumors
  # POST /rumors.json
  def create
    @rumor = Rumor.new(params[:rumor])

    respond_to do |format|
      if @rumor.save
        format.html { redirect_to @rumor, notice: 'Rumor was successfully created.' }
        format.json { render json: @rumor, status: :created, location: @rumor }
      else
        format.html { render action: "new" }
        format.json { render json: @rumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rumors/1
  # PUT /rumors/1.json
  def update
    @rumor = Rumor.find(params[:id])

    respond_to do |format|
      if @rumor.update_attributes(params[:rumor])
        format.html { redirect_to @rumor, notice: 'Rumor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rumor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rumors/1
  # DELETE /rumors/1.json
  def destroy
    @rumor = Rumor.find(params[:id])
    @rumor.destroy

    respond_to do |format|
      format.html { redirect_to rumors_url }
      format.json { head :no_content }
    end
  end
end
