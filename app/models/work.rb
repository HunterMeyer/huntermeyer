class Work < ActiveRecord::Base

  def self.build_works
    works.each do |w|
      Work.create({
        name: w[:name],
        caption: w[:caption],
        position: w[:position],
        description: w[:description],
        url: w[:url],
        image_url: w[:image_url],
        repo_url: w[:repo_url],
        twitter_id: w[:twitter_id],
        tags: w[:tags],
        ordinal: w[:ordinal]
      })
    end
  end

  def self.works
    [
      {
        name: 'Jr.DevJobs',
        caption: 'Find your first dev job',
        position: 'Co-Founder',
        description: 'Find your first dev job! Featuring jobs and paid internships for bootcamp grads, CS students & self taught programmers.',
        url: 'https://www.jrdevjobs.com',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/jrdevjobs.png',
        repo_url: nil ,
        twitter_id: 'jrdevjobs',
        tags: 'Ruby on Rails, AJAX, AWS, ElasticSearch, +More',
        ordinal: 1
      },
      {
        name: 'MonthlyStash',
        caption: 'Discreet deliveries',
        position: 'Founder',
        description: 'Discreetly delivering boxes full of rolling papers, lighters, and incense every month. Saving people time, money, and trips to store.',
        url: 'http://www.monthlystash.com',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/monthlystash.png',
        repo_url: nil ,
        twitter_id: 'monthlystash',
        tags: 'Ruby on Rails, Foundation, pSQL, Stripe, +More',
        ordinal: 2
      },
      {
        name: 'MantraGram',
        caption: 'Remember your inspiration',
        position: 'Developer',
        description: "Never forget your Mantra, your inspiration. Sign up and we'll text you your motivational messages and images to keep you focused.",
        url: 'http://mantragram.herokuapp.com',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/mantragram.png',
        repo_url: nil,
        twitter_id: nil,
        tags: 'Ruby on Rails, Custom Themes, SMS Messaging, +More',
        ordinal: 3
      },
      {
        name: 'Squeak',
        caption: 'Start your marathon',
        position: 'Developer',
        description: 'Start your marathon! Type in a keyword to start an endless, uninterrupted stream of related YouTube videos.',
        url: '/squeak',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/squeak.png',
        repo_url: nil,
        twitter_id: nil,
        tags: 'JavaScript, YouTube Data/Player API, +More',
        ordinal: 4
      },
      {
        name: 'FleetZoo',
        caption: 'Integrated fleet management',
        position: 'Contract Work',
        description: 'Developed the user interface for FleetZoo, a fleet management platform for the transportation industry.',
        url: 'http://www.fleetzoo.com',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/fleetzoo.png',
        repo_url: nil,
        twitter_id: nil,
        tags: '.NET, C#, CSS, HTML, Responsive Design, +More',
        ordinal: 5
      },
      {
        name: 'MusicSearch',
        caption: 'Discover more about your tunes',
        position: 'Developer',
        description: 'Discover more of your favorite artists\' music and album info. Find a song you love and stream it through Spotify or YouTube!',
        url: '/musicsearch',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/musicsearch.png',
        repo_url: nil,
        twitter_id: nil,
        tags: 'JavaScript, Spotify API, YouTube API, +More',
        ordinal: 6
      },
      {
        name: 'ECS | 2014',
        caption: 'Corrosion conference',
        position: 'Contract Work',
        description: 'Developed the UI, database, and payment system for the 2014 ECS Conference, a unique conference focusing on corrosion.',
        url: 'http://rails-ecs.herokuapp.com/',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/ecs.png',
        repo_url: nil,
        twitter_id: nil,
        tags: 'Ruby on Rails, Admin Panel, PayPal, +More',
        ordinal: 7
      },
      {
        name: 'Legislator Lookup',
        caption: 'Stay informed',
        position: 'Developer',
        description: 'Stay politically informed by looking up the Senators and Representatives in your zipcode to find their contact info and sponsored bills.',
        url: '/legislator',
        image_url: 'https://s3-us-west-2.amazonaws.com/huntermeyer/images/legislator.png',
        repo_url: nil,
        twitter_id: nil,
        tags: 'JavaScript, Sunlight APIs, +More',
        ordinal: 8
      }
    ]
  end

end
