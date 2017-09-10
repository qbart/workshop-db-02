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
