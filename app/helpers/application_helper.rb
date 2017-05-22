module ApplicationHelper
    def markdown
    #options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    renderer = Redcarpet::Render::HTML
    md = Redcarpet::Markdown.new(renderer)
    #md.render(text);
    
    end
end
