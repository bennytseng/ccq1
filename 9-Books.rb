# 9. Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:
#
# book = Book.new
# book.title = "My Awesome Book"
# book.add_chapter("My Awesome Chapter 1")
# book.add_chapter("My Awesome Chapter 2")
# book.chapters
# This should print:
# Your book: My Awesome Book has 2 chapters:
# 1. My Awesome Chapter 1
# 2. My Awesome Chapter 2

class Book
  attr_accessor :title, :chapters
  def initialize(title="",chapters=[])
    @title = title
    @chapters = chapters
  end

  def add_chapter(chapter)
    @chapters << chapter
  end

  def chapters
    i=1
    p "Your book: #{@title} has #{@chapters.length} chapters:"
    @chapters.map do |x|
      p "#{i}. #{x}"
      i+=1
    end
  end
end

book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 2")
book.add_chapter("My Awesome Chapter 2d")
book.add_chapter("My Awesome Chapter 2a")
book.chapters
