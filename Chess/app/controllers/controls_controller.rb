class ControlsController < ApplicationController
  before_action :set_champions

  def index

  end

  def game

  end

  def champions

  end

  def rules

  end

  def set_champions
    @champions ||= %w(Алёхин Ботвинник Смыслов).sample
  end
end
