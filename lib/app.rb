class App

  def initialize
    @model = ClickTracker.new # TODO: don't hardcode this
  end


  def run
    require 'js'
    puts "[APP] Running"

    render!
    connect!
  end


  def handle(event)
    @model.send(event.to_s)
    render!
    connect!
  end


  private

    def render!
      app = JS.global[:document].getElementById("app")
      dom = DOM.build(@model)
      app[:innerHTML] = DOM.render(dom)
    end


    def connect!
      JS.global[:document].querySelectorAll('[data-on-click]').forEach do |node|
        node.addEventListener('click') do |event|
          handle(node.getAttribute('data-on-click'))
        end
      end
    end

end
