class WelcomeController < ApplicationController
  before_action :authenticated, only: [:home]

  def home
  end
  def about
  end

  private
    def authenticated
      if user_signed_in?
        redirect_to friends_index_path
      end
    end
end
