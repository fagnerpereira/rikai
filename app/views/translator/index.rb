# frozen_string_literal: true

class Views::Translator::Index < Views::Base
  include Phlex::Rails::Helpers::FormWith
  include Phlex::Rails::Helpers::TurboFrameTag

  def view_template
    div(class: "flex flex-col gap-4 w-full") do
      div(class: "card card-md bg-neutral-100 border border-gray-300") do
        div(class: "card-body") do
          form_with url: "/translator/translate", method: :post do |form|
            div(class: "mb-4") do
              form.textarea(
                :text,
                class: "textarea w-full",
                rows: "3",
                placeholder: "Enter text to translate"
              )
            end
            div(class: "flex flex-wrap items-center justify-between") do
              div(class: "w-full md:w-5/12 mb-3 md:mb-0") do
                div(class: "relative") do
                  form.select(
                    :source,
                    [%w[English en-US], %w[Spanish es], %w[French fr], %w[German de]],
                    {},
                    class: "select"
                  )
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
                  form.select(
                    :target,
                    [%w[English en-US], %w[Spanish es], %w[French fr], %w[German de]],
                    {},
                    class: "select"
                  )
                end
              end
            end
            div(class: "mt-4 flex justify-end") do
              button(class: "btn btn-primary btn-lg") { "Translate" }
            end
          end
        end
      end

      turbo_frame_tag "translations"
    end
  end
end
