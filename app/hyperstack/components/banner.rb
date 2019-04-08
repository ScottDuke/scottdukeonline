class Banner < HyperComponent
  param :content

  render(DIV, id: "index-banner", class: "primary-colour") do
    DIV(class: "section no-pad-bot") do
      DIV(class: :container) do
        H1(class: "header center white-text text-lighten-2") { "#{@Content}" }
      end
    end
    DIV(class: "parallax parallax-background") do
    end
  end
end