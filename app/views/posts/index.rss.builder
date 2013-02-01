xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0", "xmlns:content" => 'http://purl.org/rss/1.0/modules/content/', "xmlns:media" => 'http://search.yahoo.com/mrss/', "xmlns:atom" => 'http://www.w3.org/2005/Atom' do
  xml.channel do
    xml.title "Dave's Blog"
    xml.description "Dave's Blog"
    xml.tag! 'atom:link', :href => posts_url(:format => 'rss'), :rel => 'self', :type => 'application/rss+xml'
    xml.link posts_url

    for post in @posts
      xml.item do
        xml.title post.title
        xml.description { xml.cdata!(post.body) }
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end
