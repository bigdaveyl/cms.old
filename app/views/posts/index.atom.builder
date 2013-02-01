atom_feed do |feed|
  feed.title("Dave's Blog")
  feed.updated(@posts.first.created_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)

      entry.content "type" => "html" do 
        entry.cdata!(post.body)
      end

      entry.author { |author| author.name(post.user.username) }
    end
  end
end
