require 'rails_helper'

RSpec.describe "CardsInDecks", type: :request do
  describe "GET /cards_in_decks" do
    it "works! (now write some real specs)" do
      get cards_in_decks_path
      expect(response).to have_http_status(200)
    end
  end
end
