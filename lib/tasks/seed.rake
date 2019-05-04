def books
  [
    {
      ordinal: 0,
      title: 'Thinking, Fast and Slow',
      author: 'Daniel Kahneman',
      subject: 'Psychology',
      isbn: '0374533555',
      url: 'http://amzn.to/2jjLrZL',
      image_url: s3_url('thinking-fast-slow.jpg')
    },
    {
      ordinal: 1,
      title: 'Economics, The User\'s Guide',
      author: 'Ha-Joon Chang',
      subject: 'Business',
      isbn: 'B011T8BQR2',
      url: 'http://amzn.to/2isTijv',
      image_url: s3_url('economics-user-guide.jpg')
    },
    {
      ordinal: 2,
      title: 'The Ultimate Question',
      author: 'Fred Reichheld',
      subject: 'Business',
      isbn: '1422173356',
      url: 'http://amzn.to/2jjM1GZ',
      image_url: s3_url('ultimate-question.jpg')
    },
    {
      ordinal: 3,
      title: 'Hooked',
      author: 'Nir Eyal',
      subject: 'Product Design',
      isbn: '1591847788',
      url: 'http://amzn.to/2jKc3jm',
      image_url: s3_url('hooked.jpg')
    },
    {
      ordinal: 4,
      title: 'Reality Check',
      author: 'Guy Kawasaki',
      subject: 'Entrepreneurial',
      isbn: '1591843944',
      url: 'http://amzn.to/2jKilzp',
      image_url: s3_url('reality-check.jpg')
    },
    {
      ordinal: 5,
      title: 'The Phoenix Project',
      author: 'Gene Kim, Kevin Behr, George Spafford',
      subject: 'Technology',
      isbn: '0988262509',
      url: 'http://amzn.to/2ip6kDm',
      image_url: s3_url('phoenix-project.jpg')
    },
    {
      ordinal: 6,
      title: 'Snow Crash',
      author: 'Neil Stephenson',
      subject: 'Sci-Fi',
      isbn: '0553380958',
      url: 'http://amzn.to/2isV5VJ',
      image_url: s3_url('snow-crash.jpg')
    },
    {
      ordinal: 7,
      title: 'Hitchiker\'s Guide to the Galaxy',
      author: 'Douglas Adams',
      subject: 'Sci-Fi',
      isbn: '0345453743',
      url: 'http://amzn.to/2jKali2',
      image_url: s3_url('hh-guide-galaxy.jpg')
    },
    {
      ordinal: 8,
      title: 'Walking the High Tech High Wire',
      author: 'David Adamson',
      subject: 'Technology',
      isbn: '0070004684',
      url: 'http://amzn.to/2ip80N2',
      image_url: s3_url('high-tech-high-wire.jpg')
    },
    {
      ordinal: 9,
      title: 'How to Fail at Almost Anything and Still Win Big',
      author: 'Scott Adams',
      subject: 'Psychology',
      isbn: '1591847745',
      url: 'http://amzn.to/2iUJtM8',
      image_url: s3_url('how-to-fail.jpg')
    },
    {
      ordinal: 10,
      title: 'The Intellectual Devotional',
      author: 'David Kidder, Noah Oppenheim',
      subject: 'History',
      isbn: '1594865132',
      url: 'http://amzn.to/2jwaxC8',
      image_url: s3_url('intel-devot.jpg')
    },
    {
      ordinal: 11,
      title: 'Zero to One',
      author: 'Peter Thiel',
      subject: 'Entrepreneurial',
      isbn: '0804139296',
      url: 'http://amzn.to/2jjImJe',
      image_url: s3_url('zero-to-one.jpg')
    },
    {
      ordinal: 12,
      title: 'The People\'s History of the United States',
      author: 'Howar Zinn',
      subject: 'History',
      isbn: '0062397346',
      url: 'http://amzn.to/2jKk3AP',
      image_url: s3_url('ppl-history-us.jpg')
    },
    {
      ordinal: 13,
      title: 'Thomas Jefferson and the Tripoli Pirates',
      author: 'Brian Kilmeade',
      subject: 'History',
      isbn: '0143129430',
      url: 'http://amzn.to/2jKmymJ',
      image_url: s3_url('thomas-jefferson-tripoli.jpg')
    },
    {
      ordinal: 14,
      title: 'Creativity Inc.',
      author: 'Ed Catmull',
      subject: 'Business',
      isbn: '0812993012',
      url: 'http://amzn.to/2jK8CsS',
      image_url: s3_url('creativity-inc.jpg')
    }
  ]
end

def s3_url(file_name)
  'https://huntermeyer.s3-us-west-2.amazonaws.com/images/books/' + file_name
end

namespace :seed do
  desc 'Seed Books'
  task :books => :environment do
    books.each do |seed|
      book = Book.find_or_initialize_by(title: seed[:title])
      book.update(seed)
      book.save
    end
    ap Book.active.size
  end
end
