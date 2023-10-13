require_relative 'app'

def main
  books = []
  people = []
  rentals = []

  loop do
    display_options
    choice = gets.chomp.to_i
    break if choice == 7

    process_choice(choice, books, people, rentals)
  end

  puts 'Goodbye!'
end

def display_options
  puts 'Options:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List all rentals for a person'
  puts '7. Quit'
  print 'Enter your choice: '
end

def process_choice(choice, books, people, rentals)
  case choice
  when 1 then list_books_option(books)
  when 2 then list_people_option(people)
  when 3 then create_person_option(people)
  when 4 then create_book_option(books)
  when 5 then create_rental_option(books, people, rentals)
  when 6 then list_rentals_for_person_option(rentals)
  else
    puts 'Invalid choice. Please try again.'
  end
end

main
