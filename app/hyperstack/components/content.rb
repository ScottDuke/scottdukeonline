class Content < HyperComponent
  param :header
  param :text

  render(DIV, class: "section no-pad-bot valign-wrapper scrollspy z-depth-1") do
    DIV(class: "container") do
      H3(class: "header center") { "#{@Header}" }
      DIV(class: "row center") do
        P { "#{@Text}" }
      end
    end
  end      
end