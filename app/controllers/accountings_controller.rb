class AccountingsController < ApplicationController

  # GET /accountings
  # GET /accountings.json
  def index
    @accountings = Accounting.all
  end

end
