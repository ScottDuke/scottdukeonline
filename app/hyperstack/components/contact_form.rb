class ContactForm < HyperComponent
  render(DIV, id: "contact-us", class:"container section scrollspy") do
    DIV(class: :section) do
      H2 { "Contact Me" }
      DIV(class: :row) do
        FORM(class: "col s8") do
          DIV(class: :row) do
            DIV(class: "input-field col s6") do
              INPUT(id: :name, type: :text, class: :validate)
              LABEL(for: :name) { "Your Name" }
            end
          end
        end
      end
    end
  end
end