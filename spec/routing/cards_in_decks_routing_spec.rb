require "rails_helper"

RSpec.describe CardsInDecksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cards_in_decks").to route_to("cards_in_decks#index")
    end


    it "routes to #show" do
      expect(:get => "/cards_in_decks/1").to route_to("cards_in_decks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cards_in_decks").to route_to("cards_in_decks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cards_in_decks/1").to route_to("cards_in_decks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cards_in_decks/1").to route_to("cards_in_decks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cards_in_decks/1").to route_to("cards_in_decks#destroy", :id => "1")
    end

  end
end
