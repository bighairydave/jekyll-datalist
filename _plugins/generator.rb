module Jekyll
  class BookListGenerator < Generator
    def generate(site)
      site.data['books'].each do | book |
        site.pages << BookPage.new(site, "/", "books/#{ book['title'].downcase.gsub(" ", "-") }", book['title'], book['author'], book['isbn'])
      end
    end
  end

  class BookPage < Page
    def initialize(site, base, dir, title, author, isbn)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'bookpage.html')
      self.data['title'] = title
      self.data['book_title'] = title
      self.data['book_isbn'] = isbn
      self.data['book_author'] = author
    end
  end

end
