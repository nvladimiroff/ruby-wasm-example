class DOM::Text < DOM::Element

  def render
    @node.args[0]
  end

end
