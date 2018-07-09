Markitup::Rails.configure do |config|
  config.layout = "textile"  # default is `markitup`
  config.formatter = -> markup { RedCloth.new(sanitize(markup,[:filter_html, :filter_styles, :filter_classes, :filter_ids])).to_html }
end
