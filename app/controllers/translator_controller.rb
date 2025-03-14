require "net/http"

class TranslatorController < ApplicationController
  def index
    render Views::Translator::Index.new
  end

  def translate
    uri = URI("https://api.mymemory.translated.net/get")
    uri.query = {
      q: params[:text],
      langpair: [params[:source], params[:target]].join("|")
    }.to_query

    response = Net::HTTP.get(uri)
    @json = JSON.parse(response)
  end
end
