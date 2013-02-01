class MyHtmlMaker < RbbCode::HtmlMaker
  def html_from_youtube_tag(node)
    src = sanitize_url(node.inner_bb_code)
    content_tag('iframe', :nil, { :src => src, :width => "560", :height => "315" frameborder="0" })
  end
end
