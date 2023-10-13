require_relative 'person'
require_relative 'book'
require_relative 'rental'

def list_books(books)
  puts 'List of Books:'
  books.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  end
end

def list_people(people)
  puts 'List of People:'
  people.each do |person|
    info = "ID: #{person.id}, Name: #{person.name}, Age:#{person.age}"
    puts info
  end
end

def create_person(people, type, name, age, parent_permission: true)
  if type == 'student'
    student = Student.new(age, name, parent_permission)
    people << student
  elsif type == 'teacher'
    teacher = Teacher.new(age, name)
    people << teacher
  else
    puts 'Invalid person type.'
  end
end

def create_book(books, title, author)
  book = Book.new(title, author)
  books << book
end

def create_rental(rentals, book, person, date)
  rental = Rental.new(book, person, date)
  rentals << rental
end

def list_rentals_for_person(rentals, person_id)
  person_rentals = rentals.select { |rental| rental.person.id == person_id }
  puts "Rentals for Person ID #{person_id}:"
  person_rentals.each do |rental|
    puts "Book: #{rental.book.title}, Date: #{rental.date}"
  end
end
