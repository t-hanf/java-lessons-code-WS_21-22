import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.Collections;

class Library {

    // Attribute
    private Map<String, Book> stock;

    Library() {
        this.stock = new HashMap<>();
    }

    void insertBook(Book newBook) {
        stock.put(newBook.getIsbn(), newBook);
    }

    Book getBook(String Isbn) {
        return stock.get(Isbn);
    }

    void printLibrary() {
        stock.forEach((k, v) -> {
            System.out.println("ISBN: " + k + "\nTitle: " + v.getTitle() + "\nAuthor: " + v.getAuthor());
        });
    }
}