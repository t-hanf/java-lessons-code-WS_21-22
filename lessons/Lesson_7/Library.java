
import java.awt.print.Book;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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
}