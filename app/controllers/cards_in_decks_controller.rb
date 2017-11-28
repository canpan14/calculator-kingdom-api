class CardsInDecksController < ProtectedController
  before_action :set_cards_in_deck, only: [:show, :update, :destroy]

  # GET /cards_in_decks
  def index
    @cards_in_decks = CardsInDeck.all

    render json: @cards_in_decks
  end

  # GET /cards_in_decks/1
  def show
    render json: @cards_in_deck
  end

  # POST /cards_in_decks
  def create
    @cards_in_deck = CardsInDeck.new(cards_in_deck_params)

    if @cards_in_deck.save
      render json: @cards_in_deck, status: :created, location: @cards_in_deck
    else
      render json: @cards_in_deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards_in_decks/1
  def update
    if @cards_in_deck.update(cards_in_deck_params)
      render json: @cards_in_deck
    else
      render json: @cards_in_deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards_in_decks/1
  def destroy
    @cards_in_deck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cards_in_deck
      @cards_in_deck = CardsInDeck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cards_in_deck_params
      params.require(:cards_in_deck).permit(:deck_id, :card_id, :count)
    end
end
