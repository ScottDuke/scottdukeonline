class Header < HyperComponent
  render(DIV, id: :navbar, class: "navbar-fixed scrollspy") do
    NAV(class: "grey lighten-3") do
      DIV(class: "nav-wrapper container") do
        DIV(class: :container) do
          A(href: "#navbar", class: "brand-logo") { "Scott Duke" }
        end
      end
    end
  end
end

