class NintendoCharactersController < ApplicationController
  def index
    @nintendo_characters = NintendoCharacter.all
  end

  def show
    @nintendo_character = NintendoCharacter.find(params[:id])
  end

  def update
  end
end
