$(function() {
  $('button.read').click(function() {
    var title = $(this).html();
    $('#myModalLabel').empty().append(title);
    if (title === 'Web Apps') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Employing the latest technologies I relentlessly pursue efficient, reusable and reliable code to build your application.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Ruby on Rails</span>' +
          '<span class="technology">Active Record</span>' +
          '<span class="technology">Devise</span>' +
          '<span class="technology">CanCan</span>' +
          '<span class="technology">GitHub</span>' +
          '<span class="technology">Heroku</span>' +
          '<span class="technology">Amazon S3</span>'+
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Databases') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Create a customer database, sales contact list or track your employees with a scalable and consistent database.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Relational</span>' +
          '<span class="technology">PostgreSQL</span>' +
          '<span class="technology">Active Record</span>' +
          '<span class="technology">Nested Attributes</span>' +
          '<span class="technology">Control Panels</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Any Device') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Ensure your interactive application or website looks exactly the way you want it to with responsive design.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">HTML5</span>' +
          '<span class="technology">CSS3</span>' +
          '<span class="technology">JavaScript</span>' +
          '<span class="technology">jQuery</span>' +
          '<span class="technology">jQuery Mobile</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Fully Tested') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Rigorously writing extensive tests is like an insurance policy for your application.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">RSpec</span>' +
          '<span class="technology">Capybara</span>' +
          '<span class="technology">FactoryGirl</span>' +
          '<span class="technology">VCR</span>' +
          '<span class="technology">WebMock</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Graphics') {
      $('span.more-info').empty().append(
        '<span class="more-detail">It\'s no secret, the more attractive and easy to use your application is the more attention it\'ll receive. User experience is a top priority.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Wireframing</span>' +
          '<span class="technology">User Flow Charts</span>' +
          '<span class="technology">Photoshop</span>' +
          '<span class="technology">User Testing</span>' +
          '<span class="technology">Color Palettes</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Networking') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Build strong, meaningfull relationships and connect instantly with your fans across all the social networks.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Twitter</span>' +
          '<span class="technology">YouTube</span>' +
          '<span class="technology">Pinterest</span>' +
          '<span class="technology">Facebook</span>' +
          '<span class="technology">Reddit</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Marketing') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Develop your brand and consistently promote your product or service to acquire new customers and retain existing ones.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Brand Development</span>' +
          '<span class="technology">Product Marketing</span>' +
          '<span class="technology">Promotional Material</span>' +
          '<span class="technology">Mobile Marketing</span>' +
          '<span class="technology">Loyalty Programs</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    } else if (title === 'Tutoring') {
      $('span.more-info').empty().append(
        '<span class="more-detail">Whether you want to learn new skills for the modern marketplace or develop your startup\'s application I can help.</span>' +
        '<span class="technologies">Technologies</span>' +
          '<span class="technology">Online Tutoring</span>' +
          '<span class="technology">Around Your Schedule</span>' +
          '<span class="technology">Flexible Payment</span>' +
          '<span class="technology">Downloadable Material</span>' +
          '<span class="technology">Code Review</span>' +
          '<span class="technology">more...</span>' +
        '</ul>'
        )
    };
    $('#myModal').modal('show');
  });

  $("img#GitHub").hover(function() {
    $(this).attr('src', 'assets/g_c_hover.png');
  }, function() {
    $(this).attr('src', 'assets/g_c.png');
  });

  $("img#LinkedIn").hover(function() {
    $(this).attr('src', 'assets/l_c_hover.png');
  }, function() {
    $(this).attr('src', 'assets/l_c.png');
  });

  $("img#Twitter").hover(function() {
    $(this).attr('src', 'assets/t_c_hover.png');
  }, function() {
    $(this).attr('src', 'assets/t_c.png');
  });
});