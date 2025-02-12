# frozen_string_literal: true

class DashboardController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    return render 'pages/landing' unless signed_in?

    templates = current_account.templates.active.preload(:author).order(id: :desc)

    @pagy, @templates = pagy(templates, items: 12)
  end
end
