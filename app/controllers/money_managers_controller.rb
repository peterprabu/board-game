class MoneyManagersController < ApplicationController
  before_action :set_money_manager, only: %i[ show edit update destroy ]

  # GET /money_managers or /money_managers.json
  def index
    @money_managers = MoneyManager.all
  end

  # GET /money_managers/1 or /money_managers/1.json
  def show
  end

  # GET /money_managers/new
  def new
    @money_manager = MoneyManager.new
  end

  # GET /money_managers/1/edit
  def edit
  end

  # POST /money_managers or /money_managers.json
  def create
    @money_manager = MoneyManager.new(money_manager_params)

    respond_to do |format|
      if @money_manager.save
        format.html { redirect_to money_manager_url(@money_manager), notice: "Money manager was successfully created." }
        format.json { render :show, status: :created, location: @money_manager }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_managers/1 or /money_managers/1.json
  def update
    respond_to do |format|
      if @money_manager.update(money_manager_params)
        format.html { redirect_to money_manager_url(@money_manager), notice: "Money manager was successfully updated." }
        format.json { render :show, status: :ok, location: @money_manager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_managers/1 or /money_managers/1.json
  def destroy
    @money_manager.destroy

    respond_to do |format|
      format.html { redirect_to money_managers_url, notice: "Money manager was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_manager
      @money_manager = MoneyManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_manager_params
      params.fetch(:money_manager, {})
    end
end
