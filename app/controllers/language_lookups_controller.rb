class LanguageLookupsController < ApplicationController
  before_action :set_language_lookup, only: %i[ show edit update destroy ]

  # TODO show the user the results of the lookup
  def show
  end

  # TODO show the user the form to upload the marcxml/xml
  def new
  end

  # TODO run the translation between marcxml and iso codes
  def create
    respond_to do |format|
      format.json { render :show, status: :created, location: @language_lookup }
    end
  end
end
