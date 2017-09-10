if Category.count == 0
  %w[
    Sci-fi
    Romance
    Horror
    Comics
  ].each do |name|
    Category.create!(name: name)
  end

  scifi, _, horror, _ = Category.all.order(:id).to_a

  Book.create!(category: nil, title: 'Diary')
  Book.create!(category: nil, title: 'Guide')
  Book.create!(category: scifi, title: 'Space Odyssey')
  Book.create!(category: horror, title: 'Blood')
  Book.create!(category: horror, title: 'Monster')
end

if User.count == 0
  User.create!(name: 'Batman')
  User.create!(name: 'Rogue')
  User.create!(name: 'Catwoman')
  User.create!(name: 'Deadpool')
  User.create!(name: 'Gambit')
end

if Question.count == 0
  5.times { |i| Question.create!(name: "Q%d" % (i + 1)) }
end

if Answer.count == 0
  batman, rogue, catwoman, _____, gambit = User.order(:id).to_a
  q1, q2, q3, __, q5 = Question.order(:id).to_a

  Answer.create!(answer: 'A', user: batman, question: q5)
  Answer.create!(answer: 'B', user: rogue, question: q3)
  Answer.create!(answer: 'C', user: rogue, question: q5)
  Answer.create!(answer: 'D', user: catwoman, question: q1)
  Answer.create!(answer: 'E', user: catwoman, question: q3)
  Answer.create!(answer: 'F', user: gambit, question: q1)
  Answer.create!(answer: 'G', user: gambit, question: q2)
  Answer.create!(answer: 'H', user: gambit, question: q3)
  Answer.create!(answer: 'I', user: gambit, question: q5)
end
