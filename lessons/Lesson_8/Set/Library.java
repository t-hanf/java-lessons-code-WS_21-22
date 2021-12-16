import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.Collections;
import java.util.HashSet;

class Library {

    // Attribute
    private Set<Book> stock;

    Library() {
        this.stock = new HashSet<>();
    }

    boolean insertBook(Book newBook) {
        return stock.add(newBook);
    }

    boolean containBook(Book book) {
        return stock.contains(book);
    }

    boolean removeBook(Book book) {
        return stock.remove(book);
    }

    void printLibrary() {
        Iterator<Book> iter = stock.iterator();

        while (iter.hasNext()) {
            System.out.println("Title: " + iter.next().getTitle());
        }
    }
}