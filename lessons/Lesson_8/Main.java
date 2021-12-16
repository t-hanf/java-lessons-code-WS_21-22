public class Main {

    public static void main(String[] args) {
        Library library1 = new Library();

        Book book1 = new Book("123");
        Book book2 = new Book("111", "Tobias", "Programming Java");
        Book book3 = new Book("222", "Manik", "Programming better Java");

        library1.insertBook(book1);
        library1.insertBook(book2);
        library1.insertBook(book3);

        library1.printLibrary();

        System.out.println(library1.findBook("111").getTitle());
    }

}
