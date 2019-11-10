class TaskitemsController < ApplicationController
  before_action :set_taskitem, only: [:show, :edit, :update, :destroy, :mytasks]

  # GET /taskitems
  # GET /taskitems.json
  def index
    @taskitems = Taskitem.all
  end

  # GET /taskitems/1
  # GET /taskitems/1.json
  def show
  end

  # GET /taskitems/new
  def new
    @taskitem = Taskitem.new
  end

  # GET /taskitems/1/edit
  def edit
  end

  # POST /taskitems
  # POST /taskitems.json
  def create
    @taskitem = Taskitem.new(taskitem_params)

    respond_to do |format|
      if @taskitem.save
        format.html { redirect_to @taskitem, notice: 'Taskitem was successfully created.' }
        format.json { render :show, status: :created, location: @taskitem }
      else
        format.html { render :new }
        format.json { render json: @taskitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskitems/1
  # PATCH/PUT /taskitems/1.json
  def update
    respond_to do |format|
      if @taskitem.update(taskitem_params)
        format.html { redirect_to @taskitem, notice: 'Taskitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @taskitem }
      else
        format.html { render :edit }
        format.json { render json: @taskitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskitems/1
  # DELETE /taskitems/1.json
  def destroy
    @taskitem.destroy
    respond_to do |format|
      format.html { redirect_to taskitems_url, notice: 'Taskitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def indexmytasks
    #@taskitems = Taskitem.all
    @taskitems = Taskitem.search(params[:search])

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskitem
      @taskitem = Taskitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskitem_params
      params.require(:taskitem).permit(:itemid, :itemstatus, :itemtitle, :itemdetail, :itemcharge)
    end


end
