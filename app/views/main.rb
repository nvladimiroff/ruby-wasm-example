def my_cool_button
  button(:click => :click) do
    text 'Click'
  end
end

div do
  text "You've clicked #{@model.clicks} time(s)."
  my_cool_button
end
