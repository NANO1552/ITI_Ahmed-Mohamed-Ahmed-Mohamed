// Task 1: Create a basic class Book
class Book {
  String title;   // The title of the book
  String author;  // The author of the book
  int numPages;   // The number of pages in the book

  // Constructor for initializing the Book object
  Book(this.title, this.author, this.numPages);

  // Method to display information about the book
  void displayInfo() {
    print('Title: $title');       // Print the title of the book
    print('Author: $author');     // Print the author of the book
    print('Number of pages: $numPages');  // Print the number of pages in the book
  }
}

// Task 2: Implement inheritance
class Novel extends Book {
  String genre;   // The genre of the novel

  // Constructor for initializing the Novel object
  Novel(String title, String author, int numPages, this.genre)
      : super(title, author, numPages); // Call the superclass constructor (Book)

  // Override the displayInfo method to include the genre
  @override
  void displayInfo() {
    super.displayInfo(); // Call the displayInfo method of the superclass (Book)
    print('Genre: $genre'); // Print the genre of the novel
  }
}

void main() {
  // Creating an instance of Book
  Book book1 = Book('the beginning after the end', 'TurtleMe', 187);

  // Display information about the book
  print('Book:');
  book1.displayInfo(); // Call the displayInfo method of Book to print book details
  print('');

  // Creating an instance of Novel
  Novel novel1 = Novel('Solo leveling', "Ch'ugong", 320, 'Action, fantasy');

  // Display information about the novel
  print('Novel:');
  novel1.displayInfo(); // Call the displayInfo method of Novel to print novel details
}
