# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# The following comments are how to create a seed
# User(user_id: integer, university: string, score: integer,
# company: string, display_name: string, email: string, password: string,
# salt: string, created_at: datetime, updated_at: datetime)

User.create!(score: 9001, display_name: 'ADMIN', email: 'admin@admin', password: 'adminadmin', admin: true)
User.create!(university: 'Missouri S&T', score: 0, display_name: 'Sam', email: 'Sam@mst.edu', password: 'liabsrtjsrtksrh')
User.create!(university: 'Missouri S&T', score: 10, display_name: 'John', email: 'John@gmail.com', password: 'ohsrtjsrtjsuag')
User.create!(university: 'Missouri S&T', score: 50, display_name: 'Kellen', email: 'Kellen@gmail.com', password: 'ohstrkstksuag')
User.create!(university: 'Missouri S&T', score: 5, display_name: 'Jordan', email: 'Jordan@gmail.com', password: 'ostrkshuag')
User.create!(university: 'Missouri S&T', score: 70, display_name: 'Shawn', email: 'Shawn@gmail.com', password: 'osrtjartkahuag')
User.create!(university: 'Missouri S&T', score: 35, display_name: 'Kyle', email: 'Kyle@gmail.com', password: 'ohutjdtykag')
User.create!(university: 'Missouri S&T', score: 62, display_name: 'James', email: 'James@gmail.com', password: 'trstrjsr')
User.create!(university: 'Missouri S&T', score: 100, display_name: 'Justin', email: 'Justin@gmail.com', password: 'dytkdk')
User.create!(university: 'Missouri S&T', score: 90, display_name: 'Morgan', email: 'Morgan@gmail.com', password: 'tykdldu')
User.create!(university: 'Missouri S&T', score: 200, display_name: 'Ashley', email: 'Ashley@gmail.com', password: 'srtjstyk')
User.create!(university: 'Missouri S&T', score: 350, display_name: 'Grace', email: 'Grace@gmail.com', password: 'srkstksy')
User.create!(university: 'Missouri S&T', score: 600, display_name: 'Maranda', email: 'Maranda@gmail.com', password: 'stjfaj')

Problem.create!(name: 'Hello, World!', score: 1, description: 'stuff', path: 'some path', solves: 1)
Problem.create!(name: 'Mystery Bag', score: 5, description: 'stuff and', path: 'some path')
Problem.create!(name: 'Cat Toss', score: 3, description: 'stuff and things', path: 'some path')
Problem.create!(name: 'Maze Run', score: 40, description: 'stuff and thing like', path: 'some path')
Problem.create!(name: 'Beep Boop', score: 35, description: 'stuff and things like that', path: 'some path')
Problem.create!(name: 'Choo-Choo', score: 20, description: 'stuff and things like that for', path: 'some path')
Problem.create!(name: 'Limbo', score: 5, description: 'stuff and things like that for all', path: 'some path')
Problem.create!(name: 'Chaos', score: 8, description: 'stuff and things like that for all people', path: 'some path')
Problem.create!(name: 'Domination', score: 10, description: 'stuff and things like that for all people on', path: 'some path')
Problem.create!(name: 'Entertainer', score: 50, description: 'stuff and things like that for all people on Earth', path: 'some path')
Problem.create!(name: 'The Doctor is in', score: 50, description: 'For this assignment, you need to submit a file called ‘mystringmap.h’ and any other necessary implementation files. Remember to put your name and section at the top of all your files.
Problem:
Dr. Zoidberg is a great doctor, but he sometimes forget some of his training. In the 30th century, a doctor has to master hundreds of different anatomies and physiologies. Dr. Zoidberg has mastered plenty of them, but he sometimes has a problem distinguishing between different lifeforms. Who can remember how many livers a Human, a Martian, and a Decapodian each has? In order to help him remember who is what, Dr. Zoidberg has started to keep notes on all his patients about which species they belong to, and has decided that it is finally time to modernize his process. He has requested you to provide him with decision software to quickly and easily determine a patient’s kind.

Medicine is serious business.

Your job is to write a program that uses a Hash Table to implement a "StringMap": a set of <key,value> pairs where the key is a string. 
Testing:
Use the provided tester file to check if your implementation is working correctly. 
The program ‘maptester.cpp’ uses the ‘MyStringMap’ class and the intended output is ‘mapoutput.txt’.

Notice:
You are expected to derive the ‘AbstractStringMap’ class.
The function ‘valueOf()’ is expected to “throw” errors. 
You are required to use a Hash-Table.
Your ‘print()’ function may output the <key,value> pairs is a different order than the one shown in the output file. (depending on your Hash-Table design and Hash function). This is normal and expected.
Useful Hints:
Carefully read the comments of each member function. 
Write down an algorithm for the function before you start coding it. 
Develop your member functions one at a time, starting from the simplest ones!
Move to the next function only after the previous one has been tested. 
Trying to code the whole class and then remove the bugs may prove to be too big a task.
Use the test functions one at a time.
', path: 'some path')

ProblemKeyword.create!(problem_id: 1, keyword: "cat")
ProblemKeyword.create!(problem_id: 2, keyword: "dog")
ProblemKeyword.create!(problem_id: 9, keyword: "cat")
ProblemKeyword.create!(problem_id: 3, keyword: "catdog")

ProblemTag.create!(problem_id: 1, tag: "heap")
ProblemTag.create!(problem_id: 2, tag: "sort")
ProblemTag.create!(problem_id: 3, tag: "heapsort")

sot = Tournament.create!(name: 'Some Old Tourney', start: DateTime.new(2012, 1, 15, 12), end: DateTime.new(2012, 5, 1), checktime: true)
et  = Tournament.create!(name: 'Eternal Tournament', start: DateTime.new(1955, 5, 15), end: DateTime.new(2030, 5, 15), checktime: true)
fg  = Tournament.create!(name: 'Future Gamez', start: DateTime.new(2018, 1, 1), end: DateTime.new(2018, 12, 1), checktime: true)

for lang in [ 'C', 'Lisp', 'Pascal' ] do
  TournamentLanguage.create!(tournament_id: sot.tournament_id, language: lang)
end
for lang in [ 'C', 'C++', 'Go', 'JavaScript', 'Haskell'] do
  TournamentLanguage.create!(tournament_id: et.tournament_id, language: lang)
end
TournamentLanguage.create!(tournament_id: fg.tournament_id, language: 'Python')

UserSubmission.create!(user_id: 1, problem_id: 1, timestamp: DateTime.new(2001, 9, 10), language: "PHP")
UserSubmission.create!(user_id: 1, problem_id: 1, timestamp: DateTime.new(2001, 9, 11), solved: 0, language: "Python", runtime: 4)
UserSubmission.create!(user_id: 1, problem_id: 1, timestamp: DateTime.new(2001, 9, 12), solved: 1, language: "Python", runtime: 409366.169)
# User(user_id: integer, university: string, score: integer, company: string, display_name: string, email: string, password: string, salt: string, created_at: datetime, updated_at: datetime, encrypted_password: string, reset_password_token: string, reset_password_sent_at: datetime, remember_created_at: datetime, sign_in_count: integer, current_sign_in_at: datetime, last_sign_in_at: datetime, current_sign_in_ip: inet, last_sign_in_ip: inet)
# User(user_id: integer, university: string, score: integer, company: string, display_name: string, email: string, password: string, salt: string, created_at: datetime, updated_at: datetime)
