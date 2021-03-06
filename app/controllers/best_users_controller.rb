class BestUsersController < ApplicationController
  before_action :set_best_user, only: [:show, :edit, :update, :destroy]

  # GET /best_users
  # GET /best_users.json
  def index
    @best_users = BestUser.all
  end

  # GET /best_users/1
  # GET /best_users/1.json
  def show
  end

  # GET /best_users/new
  def new
    @best_user = BestUser.new
  end

  # GET /best_users/1/edit
  def edit
  end

  # POST /best_users
  # POST /best_users.json
  def create
    @best_user = BestUser.new(best_user_params)

    respond_to do |format|
      if @best_user.save
        format.html { redirect_to @best_user, notice: 'Best user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @best_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @best_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /best_users/1
  # PATCH/PUT /best_users/1.json
  def update
    respond_to do |format|
      if @best_user.update(best_user_params)
        format.html { redirect_to @best_user, notice: 'Best user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @best_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /best_users/1
  # DELETE /best_users/1.json
  def destroy
    @best_user.destroy
    respond_to do |format|
      format.html { redirect_to best_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best_user
      @best_user = BestUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_user_params
      params.require(:best_user).permit(:email)
    end
end
