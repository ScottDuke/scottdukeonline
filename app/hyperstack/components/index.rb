class Index < HyperComponent

  def link_item(path, title)
    A(href: "#{path}", style: { marginRight: 10 }, target: "_blank") { title.camelize }
  end

  render(DIV) do
    Banner(content: "Hello.")
    Content(header: "About Me", text: "Ruby On Rails developer")
    DIV(class: "section no-pad-bot valign-wrapper scrollspy z-depth-1") do
      DIV(class: "container") do
        H3(class: "header center") { "Site Tech" }
        DIV(class: "row center") do
          P do
            "This site was built using:"
            UL do
              LI { link_item('https://hyperstack.org/', 'Hyperstack') }
            end
          end
        end
      end
    end
  ContactForm()
  end
end
