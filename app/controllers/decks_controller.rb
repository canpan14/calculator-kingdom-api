class DecksController < ProtectedController
  before_action :set_deck, only: [:show, :update, :destroy]

  # GET /decks
  def index
    @decks = Deck.all.select { |a| a.user_id == current_user.id }

    render json: @decks
  end

  # GET /decks/1
  def show
    render json: @deck
  end

  # POST /decks
  def create
    @deck = current_user.decks.build(deck_params)

    if @deck.save
      render json: @deck, status: :created, location: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decks/1
  def update
    if @deck.update(deck_update_params)
      render json: @deck
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decks/1
  def destroy
    @deck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deck
      @deck = current_user.decks.find(params[:id])
    end

    def deck_update_params
      params.require(:deck).permit(:name)
    end

    # Only allow a trusted parameter "white list" through.
    def deck_params
      params.require(:deck).permit(:user_id, :name)
    end
end
