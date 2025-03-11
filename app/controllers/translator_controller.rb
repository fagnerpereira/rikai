class TranslatorController < ApplicationController
  def index
    render Views::Translator::Index.new
  end
end
