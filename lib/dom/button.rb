class DOM::Button < DOM::Element

  def render
    @node.opts[:data_on_click] = @node.opts.delete(:click)

    super
  end

end
