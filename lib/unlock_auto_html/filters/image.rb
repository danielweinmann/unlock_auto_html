AutoHtml.add_filter(:image).with({:alt => ''}) do |text, options|
  r = Redcarpet::Markdown.new(NoParagraphRenderer)
  alt = options[:alt]
  text.gsub(/https?:\/\/\S+\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
    r.render("![#{alt}](#{match})")
  end
end
