public class Book implements Comparable<Book> {

    private String isbn;
    private String author;
    private String title;

    Book(String isbn, String author, String title) {
        this.isbn = isbn;
        this.author = author;
        this.title = title;
    }

    Book(String isbn) {
        this.isbn = isbn;
        this.author = "";
        this.title = "";
    }

    public String getIsbn() {
        return isbn;
    }

    public String getAuthor() {
        return author;
    }

    public String getTitle() {
        return title;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }

        if (obj instanceof Book) {
            return this.isbn.equals(((Book) obj).getIsbn());
        }

        return false;
    }

    @Override
    public int compareTo(Book o) {
        return this.isbn.compareTo(o.getIsbn());
    }
}
