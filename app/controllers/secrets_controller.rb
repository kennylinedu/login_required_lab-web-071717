class SecretsController < ApplicationController

  def new
  end

  def show
    if current_user
      render secrets_new_path
    else
      redirect_to new_session_path
    end
  end


end
