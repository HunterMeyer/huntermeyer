def books
  [
    {
      title: 'Talking, Fast and Slow',
      author: 'Daniel Kahneman',
      genre: 'Non-fiction',
      subject: 'Psychology',
      isbn: '0374533555',
      url: 'http://amzn.to/2jjLrZL',
      summary: 'In the international bestseller, Thinking, Fast and Slow, Daniel Kahneman,'\
      ' the renowned psychologist and winner of the Nobel Prize in Economics, takes us on'\
      ' a groundbreaking tour of the mind and explains the two systems that drive the way'\
      ' we think. System 1 is fast, intuitive, and emotional; System 2 is slower, more'\
      ' deliberative, and more logical. The impact of overconfidence on corporate strategies'\
      ', the difficulties of predicting what will make us happy in the future, the profound'\
      ' effect of cognitive biases on everything from playing the stock market to planning'\
      ' our next vacation―each of these can be understood only by knowing how the two systems'\
      ' shape our judgments and decisions.'
    }
  ]
end

namespace :seed do
  desc 'Seed Books'
  task :seed_books => :environment do
    books.each do |seed|
      book = Book.find_or_initialize_by(title: seed[:title])
      book.update(seed)
      book.save
    end
  end
end
