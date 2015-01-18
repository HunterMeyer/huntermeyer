# Seed education data
Education.create([
  {
    school: 'Johns Hopkins University',
    concentration: 'Data Science Specialization',
    url: 'https://www.coursera.org/specialization/jhudatascience/1',
    start_date: 'Feb 2014',
    end_date: 'Present',
    city: nil,
    state: nil,
    ordinal: 1,
    visible: true,
    highlights: nil,
    description: 'Identify and classify data science problems, learn the principles of tidy data and data sharing, apply the tools for
      data cleaning and manipulation, make visual representations of data using plotting systems in R, create rich analytic graphics from
      different types of datasets, create visualizations of multidimensional data using exploratory multivariate statistical techniques,
      perform inferential tasks in highly targeted settings, fit regression models, interpret coefficients, investigate residuals and
      variability, apply multiple machine learning tools, build and evaluate predictors on real data, communicate using statistics and
      statistical products.'
  },
  {
    school: 'University of Maryland, College Park',
    concentration: 'Cybersecurity Specialization',
    url: 'https://www.coursera.org/specialization/cybersecurity/7',
    start_date: 'Jan 2015',
    end_date: 'Present',
    city: nil,
    state: nil,
    ordinal: 2,
    visible: true,
    highlights: nil,
    description: 'Design and build secure systems through principles of human-computer interaction and in-depth study of Usable Security
      (authentication passwords, two-factor auth, biometrics, tracking, secure and anonymous browsing, data sharing), as well as Software
      Security (low-level memory based attacks, buffer overflows, SQL injection, session hijacking, penetration testing), Cryptography
      (private-key, public-key, authenticated encryption, digital signatures, stream and block ciphers, hash functions, Diffie-Hellman Key
      Exchange, El Gamal Encryption, RSA), and Hardware Security (trojans, side-channel attacks, ElectroMagnetic analysis, fault injection
      attack, Trust Platform Modules, Physical Unclonable Functions, RFID).'
  },
  {
    school: 'University of Texas, Austin',
    concentration: 'Foundations of Data Analysis',
    url: 'https://www.edx.org/course/foundations-data-analysis-utaustinx-ut-7-01x',
    start_date: 'Nov 2014',
    end_date: 'Present',
    city: nil,
    state: nil,
    ordinal: 3,
    visible: true,
    highlights: nil,
    description: 'Hands on course with a data lab to teach fundamental statistical topics such as descriptive statistics, inferential
      testing, and modeling using the R programming language. Concepts include describing normal distributions, univariate descriptive
      statistics, bivariate distributions and identifying relationships between quantitative data, identifying relationships between
      categorical data, linear function models, exponential and logistic function models, sampling distribution and estimation, and
      hypothesis testing.'
  },
  {
    school: 'Epicodus',
    concentration: 'Web Development',
    url: 'http://www.epicodus.com',
    start_date: 'July 2014',
    end_date: 'Present',
    city: 'Portland',
    state: 'OR',
    ordinal: 4,
    visible: true,
    highlights: nil,
    description: 'Epicodus is a four month, forty hour per week, in-person class on programming in Portland, Oregon. Each day starts with
      a 5-10 minute standup, where students can share anything with the rest of the class: coding tricks they learned, interesting blog
      posts they read, upcoming meetups they\'re going to. Then students spend the entire rest of the day coding a new program each day
      using pair-programming and test driven development. At the end of the course students pair in groups of ~6 to apply all of their
      technical and project management skills to build a real-world application for a local business. Skills include Ruby, Rails, SQL,
      jQuery, Active Record, Javascript, AJAX, AngularJS, HTML and CSS, and APIs.'
  },
  {
    school: 'University of Central Florida',
    concentration: 'B.A. Interpersonal/Organizational Communication & Marketing',
    url: 'http://www.ucf.edu/',
    start_date: 'Aug 2010',
    end_date: 'Present',
    city: 'Orlando',
    state: 'FL',
    ordinal: 4,
    visible: true,
    highlights: 'Vice-President\'s Gold Medal of Honor, Dean\'s List, Lambda Pi Eta Communication Honor Society, Phi Sigma Pi National Honor
      Fraternity, Tau Sigma National Honor Society',
    description: 'The field of communication-studies that deals with how we communicate within organizations and in interpersonal settings.
      Heavy focus on the study and research of oral communication, human relations, logical reasoning, argumentation and debate, gender and
      intercultural issues, conflict management, nonverbal and attitude analysis, and visual communication. The marketing concentration
      focused on intelligence gathering, supply chain and operations management, consumer behavior, analysis and research, and marketing
      strategy.'
  }
])

# Seed experience data
Experience.create([
  {
    company: 'Listen360',
    title: 'Software Engineer',
    url: 'http://www.listen360.com',
    city: 'Alpharetta',
    state: 'GA',
    start_date: 'Jan 2014',
    end_date: 'Present',
    ordinal: 1,
    visible: true,
    highlights: nil,
    short_description: 'In this role I report directly to the CTO and am responsible for application and database development including:
      developing solutions for Listen360 customers, solving escalated technical support issues, and building out internal infrastructure.',
    long_description: 'Responsible for application, database, and internal infrastructure development and support;
      Lead Operations Department stand-up and manage Kanban board adhering to Agile methodology;
      Responsible for small and large scale data migrations in a production environment;
      Install software, troubleshot, and configure Linux based web servers;
      Debug application including reporting, search, and warehousing infrastructure in both a Ruby on Rails
      and an Angular.js environment;
      Craft knowledge base articles to document reproducible procedures such as rake tasks, database
      queries, working with web-services, FTP scripts, and development environment configuration;
      Update and maintain customer-facing developer documentation of the Listen360 API;
      Work with customers to debug and troubleshoot inter-network system and API integrations;
      Unit-test and integration-test new and existing product features'
  },
  {
    company: 'Jr.DevJobs',
    title: 'Co-Founder, Software Engineer',
    url: 'https://www.jrdevjobs.com',
    city: 'Portland',
    state: 'OR',
    start_date: 'Dec 2013',
    end_date: 'Present',
    ordinal: 2,
    visible: true,
    highlights: nil,
    short_description: 'In this role I am responsible for product development, bringing the product to market, developing meaningful
      relationships, finding talent for employers and helping junior developers land their first dev job.',
    long_description: 'Responsible for full-stack product development and marketing strategy;
      Engineered “private” job board service for schools and bootcamps offering custom sub-domains, a la
      carte features, and single-click deployments;
      Created tiered billing and couponing system integrated with Stripe;
      Developed candidate-matching technology that matches jobs to job seekers using a combination of
      users’ profile and site usage data;
      Lead SEO strategies resulting in top hit on Google for “junior developer jobs”;
      Built rich job posting features and internal application system specifically designed to target junior
      developers and maximize pre-screening effectiveness;
      Integrated ElasticSearch resulting in a 50% reduction in search response time;
      Reduced user on-boarding time by integrating LinkedIn for single-sign-on (SSO) and account creation;
      Eliminated site-lag by utilizing background workers to handle long running processes such as
      submitting applications, sending messages, and uploading resumes;
      Achieved 99% delivery-rate for job application and support emails through user authentication, high
      security standards, and strong online reputation management;
      Developed dashboard with in-depth statistics on site growth and engagement;
      Created Insights page featuring graphs and visualizations of various data-points;
      Hooked into Amazon S3 for persistent file storage of resumes and images'
  },
  {
    company: 'Productivity Apex, Inc.',
    title: 'Software Developer',
    url: 'http://www.productivityapex.com/',
    city: 'Orlando',
    state: 'FL',
    start_date: 'Dec 2013',
    end_date: 'Jan 2014',
    ordinal: 3,
    visible: false,
    highlights: nil,
    short_description: 'Developed user-interface and front-end for PAIs new proprietary desktop and iOS fleet management application.',
    long_description: 'Developed user-interface and front-end for PAIs new proprietary desktop and iOS fleet management application.'
  },
  {
    company: 'Mercury Payment Systems',
    title: 'Loyalty Marketing, Relationship Manager',
    url: 'http://www.mercurypay.com/',
    city: 'Denver',
    state: 'CO',
    start_date: 'April 2012',
    end_date: 'June 2013',
    ordinal: 4,
    visible: true,
    highlights: 'Generated nearly $500k in revenue for loyalty merchants by creating and delivering eye-catching, valuable and actionable
      mobile marking campaigns to over 1.2 million subscribers with an average redemption rate of over 20%.',
    short_description: 'Integrating Sundrop Mobile into Mercury\'s Product Mix;
      Acting as the primary liaison and marketing manager for multiple national accounts/brands made up of over 500 merchants;
      Developing and executing national marketing campaigns that focus on customer retention while meeting the standards set forth by the
      Mobile Marketing Association;
      Responsible for overseeing loyalty merchant accounts from initial enrollment, boarding, training, as well as comprehensive marketing
      consultations throughout the relationship;
      Work closely with merchants to understand their business needs and their customers to identify opportunities to build strong brand
      awareness and loyalty while driving ROI.;
      Regular monitoring of the merchant’s loyalty activity, scheduling meetings, and assisting merchant’s growth through increased
      customer subscriber counts and marketing campaign assistance',
    long_description: 'Integrating Sundrop Mobile into Mercury\'s Product Mix;
      Acting as the primary liaison and marketing manager for multiple national accounts/brands made up of over 500 merchants;
      Developing and executing national marketing campaigns that focus on customer retention while meeting the standards set forth by the
      Mobile Marketing Association;
      Responsible for overseeing loyalty merchant accounts from initial enrollment, boarding, training, as well as comprehensive marketing
      consultations throughout the relationship;
      Work closely with merchants to understand their business needs and their customers to identify opportunities to build strong brand
      awareness and loyalty while driving ROI.;
      Regular monitoring of the merchant’s loyalty activity, scheduling meetings, and assisting merchant’s growth through increased
      customer subscriber counts and marketing campaign assistance'
  },
  {
    company: 'Sundrop Mobile',
    title: 'Marketing Specialist',
    url: 'http://sundropmobile.com',
    city: 'Maitland',
    state: 'FL',
    start_date: 'Jan 2012',
    end_date: 'April 2014',
    ordinal: 5,
    visible: true,
    highlights: 'Acquired by Mercury Payment Systems, April 2012',
    short_description: 'Delivering the extraordinary value of Sundrop Mobile\'s incredible marketing tool to business owners, marketers,
      and corporate executives representing diverse industry backgrounds;
      Developed training manuals, customer life cycles, ROI calculators and best practices for internal executives, support staff,
      and sales agents and externally to corporate executives, business owners and marketing companies;
      Worked as triage for support department in order to streamline the support process;
      Strategically trained, created milestones and plans of action for customers on how Sundrop can meet their individual needs;
      Crafted email, SMS text and voice broadcasts using industry leading technology that exceeded merchant\'s expectations both
      in creativity and return on investment',
    long_description: 'Delivering the extraordinary value of Sundrop Mobile\'s incredible marketing tool to business owners, marketers,
      and corporate executives representing diverse industry backgrounds;
      Developed training manuals, customer life cycles, ROI calculators and best practices for internal executives, support staff,
      and sales agents and externally to corporate executives, business owners and marketing companies;
      Worked as triage for support department in order to streamline the support process;
      Strategically trained, created milestones and plans of action for customers on how Sundrop can meet their individual needs;
      Crafted email, SMS text and voice broadcasts using industry leading technology that exceeded merchant\'s expectations both
      in creativity and return on investment'
  },
  {
    company: 'Lowndes, Drosdick, Doster, Kantor & Reed, P.A.',
    title: 'Marketing Intern',
    url: 'http://www.lowndes-law.com/',
    city: 'Orlando',
    state: 'FL',
    start_date: 'Aug 2011',
    end_date: 'Jan 2012',
    ordinal: 6,
    visible: true,
    highlights: 'Won the Social Media Initiative Runner-Up Award from the Legal Marketing Association, the firm\'s first award from the LMA;
      Developed Client Corner (http://lowndesclientcorner.com/) blog to celebrate clients\' accomplishments',
    short_description: 'Aids in departmental initiatives to improve business processes and products;
      Assist with marketing plans and projects for strategic initiatives based on resource estimates, timeline\'s, budgets and deadlines;
      Perform research both internally and externally in support of marketing and business development efforts;
      Interpret market research data and make recommendations;
      Coordinating the creation and production of marketing materials;
      Assist with internal seminars, outside events and activities;
      Assist in the maintenance of the firm\'s CRM system;
      Wrote and edited press releases, attorney biographies, and articles;
      Graphically designed and maintained corporate WordPress blog;
      Promoted and managed firms Facebook, LinkedIn, and YouTube sites;
      Created blogs for and advised attorneys on blog practices',
    long_description: 'Aids in departmental initiatives to improve business processes and products;
      Assist with marketing plans and projects for strategic initiatives based on resource estimates, timeline\'s, budgets and deadlines;
      Perform research both internally and externally in support of marketing and business development efforts;
      Interpret market research data and make recommendations;
      Coordinating the creation and production of marketing materials;
      Assist with internal seminars, outside events and activities;
      Assist in the maintenance of the firm\'s CRM system;
      Wrote and edited press releases, attorney biographies, and articles;
      Graphically designed and maintained corporate WordPress blog;
      Promoted and managed firms Facebook, LinkedIn, and YouTube sites;
      Created blogs for and advised attorneys on blog practices'
  }
])

# Seed portfolio data
Work.create([
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
])

# Seed skill data
Skill.create([
  {
    name: 'Ruby on Rails',
    width: 92,
    ordinal: 1,
    visible: true
  },
  {
    name: 'JavaScript, jQuery, AJAX',
    width: 85,
    ordinal: 2,
    visible: true
  },
  {
    name: 'PostgreSQL',
    width: 78,
    ordinal: 3,
    visible: true
  },
  {
    name: 'R, R Studio',
    width: 65,
    ordinal: 4,
    visible: true
  },
  {
    name: 'ElasticSearch',
    width: 50,
    ordinal: 5,
    visible: true
  },
  {
    name: 'Linux, UNIX',
    width: 70,
    ordinal: 6,
    visible: true
  },
  {
    name: 'AngularJS',
    width: 48,
    ordinal: 7,
    visible: true
  },
  {
    name: 'Amazon Web Services',
    width: 60,
    ordinal: 8,
    visible: true
  },
  {
    name: 'Git',
    width: 80,
    ordinal: 9,
    visible: true
  },
  {
    name: 'Data Mining',
    width: 78,
    ordinal: 10,
    visible: true
  },
  {
    name: 'Heroku',
    width: 90,
    ordinal: 11,
    visible: true
  },
  {
    name: 'Bootstrap',
    width: 90,
    ordinal: 12,
    visible: true
  },
  {
    name: 'SEO, Marketing',
    width: 87,
    ordinal: 12,
    visible: true
  }
])
