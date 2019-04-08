class Footer < HyperComponent
  render(FOOTER, class: "page-footer primary-colour") do
    DIV(class: "footer-copyright") do
      DIV(class: :container) do
        "© #{Time.now.year} Scott Duke"
      end
    end
  end
end