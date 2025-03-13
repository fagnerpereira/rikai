# frozen_string_literal: true

class Components::Translations < Components::Base
  LANGUAGES = {
    "en" => "English",
    "es" => "Spanish",
    "fr" => "French",
    "de" => "German"
  }

  def initialize(data:)
    @data = data
  end

  def view_template
    table(
      id: "translations",
      class: "border border-collapse border-gray-400 table-fixed w-full bg-white"
    ) do
      thead(class: "bg-neutral-100") do
        tr(class: "") do
          th(class: "p-4 border border-gray-300") { LANGUAGES[params[:source]] }
          th(class: "p-4 border border-gray-300") { LANGUAGES[params[:target]] }
        end
      end
      tbody do
        @data.each do |item|
          tr do
            td(class: "p-4 border border-gray-300") { item["segment"] }
            td(class: "p-4 border border-gray-300") { item["translation"] }
          end
        end
      end
    end
  end

  private

  def params
    view_context.params
  end
end
