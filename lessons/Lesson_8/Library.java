import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Collections;

class Library {

    // Attribute
    private List<Book> stock;

    Library() {
        this.stock = new ArrayList<>();
    }

    boolean insertBook(Book newBook) {
        return stock.add(newBook);
    }

    void printLibrary() {
        Iterator<Book> iter = stock.iterator();

        while (iter.hasNext()) {
            System.out.println("Title: " + iter.next().getTitle());
        }
    }

    Book findBook(String isbn) {
        int i = Collections.binarySearch(stock, new Book(isbn));
        if (i >= 0) {
            return stock.get(i);
        }

        return null;
    }
}