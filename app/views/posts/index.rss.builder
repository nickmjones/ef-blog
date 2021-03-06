xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "The Check In - The Event Farm Blog"
    xml.description "Thoughts from the Event Farm staff about event marketing, the web, and more."
    xml.link root_url

    @posts.each do |post|
      xml.item do
        xml.title post.title
        xml.description post.meta_desc
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end
