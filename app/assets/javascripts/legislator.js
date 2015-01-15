// API Key: 5b596ceec88a42d98151d7b383431dc9

var MyLegislator = {

};

$(function() {
  var i = 0;
  $("form#get-zip").submit(function() {
    var zip = $("input#zip").val();
    $("div#card-container").empty();
    $.get("http://congress.api.sunlightfoundation.com/legislators/locate?apikey=5b596ceec88a42d98151d7b383431dc9&zip=" + zip, function(responseBody) {
      responseBody.results.forEach(function(legislator) {
        $("div#card-container").append("<div class='leftHeader' id='cards" + i + "'></div>");
        var img_src = 'http://theunitedstates.io/images/congress/225x275/'
        $("div#cards" + i).append("<img id='pics' style='inline-block' src='" + img_src + legislator.bioguide_id + ".jpg'>").hide().fadeIn();
        $("div#cards" + i).append("<ul class='person' id='person" + i +"'><b>" + legislator.first_name + " " + legislator.last_name + " " + " (<span class='chamber'>" + legislator.chamber + "</span>, " + legislator.party + "-" + legislator.state + ")</b>").hide().fadeIn();
        $("ul#person" + i).append("<li>" + "<a target='_blank' class='links' href=" + legislator.website + ">" + legislator.website + "</a></li>").hide().fadeIn();
        $("ul#person" + i).append("<li>" + legislator.phone + "</li>").hide().fadeIn();
        $("ul#person" + i).append("<li>" + legislator.oc_email + "</li>").hide().fadeIn();
        $("ul#person" + i).append("<li id='bills'><span class='links'>Sponsored Bills</span></li></ul>").hide().fadeIn();
        $("li#bills").click(function() {
          $.get("http://congress.api.sunlightfoundation.com/bills?apikey=5b596ceec88a42d98151d7b383431dc9&sponsor_id__in=" + legislator.bioguide_id, function(resultBody) {
          resultBody.results.forEach(function(bills) {
            var title = (bills.short_title === null ? "" : (": <b>" + bills.short_title + "</b>"));
            $("ul#bills").append("<li><a target='_blank' class='links' href='" + bills.urls.congress + "''>" + bills.bill_id + title + "</a></li>").hide().fadeIn();
          });
          $('#myModal').modal('show');
        });
        })
        if (legislator.twitter_id != null) {
          $("ul#person" + i).append("<a target='_blank' href='http://www.twitter.com/" + legislator.twitter_id + "'><img class='icons' src='https://googledrive.com/host/0BzGPB-VGfaP5LTBjZ0VPSEo4azA/twitter.png'>").hide().fadeIn();
        }
        if (legislator.youtube_id != null) {
          $("ul#person" + i).append("<a target='_blank' href='http://www.youtube.com/user/" + legislator.youtube_id + "'><img class='icons' src='https://googledrive.com/host/0BzGPB-VGfaP5LTBjZ0VPSEo4azA/youtube.png'>").hide().fadeIn();
        }
        if (legislator.facebook_id != null) {
          $("ul#person" + i).append("<a target='_blank' href='http://www.facebook.com/" + legislator.facebook_id + "'><img class='icons' src='https://googledrive.com/host/0BzGPB-VGfaP5LTBjZ0VPSEo4azA/facebook.png'>").hide().fadeIn();
        }
        i++;
      });
    });

    return false;
  });
});
