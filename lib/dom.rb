module DOM

  def self.build(model)
    root_view_path = '/app/views/main.rb'
    root = Arboriculture.build(File.read(root_view_path.to_s), model:)

    root
  end


  def self.render(node)
    element = case node.name
    when :text
      DOM::Text.new(node)
    when :button
      DOM::Button.new(node)
    else
      DOM::Element.new(node)
    end

    element.render
  end

end
