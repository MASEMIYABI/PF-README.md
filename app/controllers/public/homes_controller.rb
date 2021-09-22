class Public::HomesController < ApplicationController
  def top
    @shop =Shop.all
  end
end
