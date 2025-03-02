class DOM::Element

  def initialize(node)
    @node = node
  end


  def render
    if @node.children.any?
      children = @node.children.map { |c| DOM.render(c) }
      <<~HTML
        <#{@node.name} #{attributes.join(' ')}>
          #{children.join("\n")}
        </#{@node.name}>
      HTML
    else
      "<#{@node.name} #{attributes.join(' ')}/>"
    end
  end


  private


    def attributes
      @node.opts.map do |key, value|
        "#{key.to_s.gsub('_', '-')}=\"#{value}\""
      end
    end

end
