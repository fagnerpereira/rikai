# frozen_string_literal: true

class Components::Translations < Components::Base
  def view_template
    table(
      class: "border border-collapse border-gray-400 table-fixed w-full bg-white"
    ) do
      thead(class: "bg-neutral-100") do
        tr(class: "") do
          th(class: "p-4 border border-gray-300") { "Portuguese" }
          th(class: "p-4 border border-gray-300") { "English" }
        end
      end
      tbody do
        tr do
          td(class: "p-4 border border-gray-300") { "ola" }
          td(class: "p-4 border border-gray-300") { "hello" }
        end
        tr do
          td(class: "p-4 border border-gray-300") { "tchau" }
          td(class: "p-4 border border-gray-300") { "goodbye" }
        end
      end
    end
  end
end
