# frozen_string_literal: true

class Views::Translator::Index < Views::Base
  def view_template
      div(class: "flex flex-col gap-4 w-full") do
        div(class: "card card-md bg-neutral-100 border border-gray-300") do
          div(class: "card-body") do
            div(class: "mb-4") do
              textarea(
                class:
                  "w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 bg-white",
                rows: "3",
                placeholder: "Enter text to translate"
              )
            end
            div(class: "flex flex-wrap items-center justify-between") do
              div(class: "w-full md:w-5/12 mb-3 md:mb-0") do
                div(class: "relative") do
                  select(
                    class:
                      "w-full p-3 border border-gray-300 rounded-md appearance-none bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                  ) do
                    option(selected: "selected") { "Autodetect" }
                    option { "English" }
                    option { "Spanish" }
                    option { "French" }
                    option { "German" }
                  end
                  div(
                    class:
                      "absolute inset-y-0 right-0 flex items-center px-2 pointer-events-none"
                  ) do
                    svg(
                      class: "w-5 h-5 text-gray-400",
                      fill: "none",
                      stroke: "currentColor",
                      viewbox: "0 0 24 24",
                      xmlns: "http://www.w3.org/2000/svg"
                    ) do |s|
                      s.path(
                        stroke_linecap: "round",
                        stroke_linejoin: "round",
                        stroke_width: "2",
                        d: "M19 9l-7 7-7-7"
                      )
                    end
                  end
                end
              end
              div(
                class:
                  "flex items-center justify-center w-full md:w-2/12 mb-3 md:mb-0"
              ) do
                svg(
                  xmlns: "http://www.w3.org/2000/svg",
                  class: "h-6 w-6 text-blue-500",
                  fill: "none",
                  viewbox: "0 0 24 24",
                  stroke: "currentColor"
                ) do |s|
                  s.path(
                    stroke_linecap: "round",
                    stroke_linejoin: "round",
                    stroke_width: "2",
                    d: "M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"
                  )
                end
              end
              div(class: "w-full md:w-5/12 mb-3 md:mb-0") do
                div(class: "relative") do
                  select(
                    class:
                      "w-full p-3 border border-gray-300 rounded-md appearance-none bg-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                  ) do
                    option(selected: "selected") { "English" }
                    option { "Spanish" }
                    option { "French" }
                    option { "German" }
                  end
                  div(
                    class:
                      "absolute inset-y-0 right-0 flex items-center px-2 pointer-events-none"
                  ) do
                    svg(
                      class: "w-5 h-5 text-gray-400",
                      fill: "none",
                      stroke: "currentColor",
                      viewbox: "0 0 24 24",
                      xmlns: "http://www.w3.org/2000/svg"
                    ) do |s|
                      s.path(
                        stroke_linecap: "round",
                        stroke_linejoin: "round",
                        stroke_width: "2",
                        d: "M19 9l-7 7-7-7"
                      )
                    end
                  end
                end
              end
            end
            div(class: "mt-4 flex justify-end") do
              button(class: "btn btn-primary btn-lg") { "Search" }
            end
          end
        end
        render Components::Translations.new
      end
  end
end
