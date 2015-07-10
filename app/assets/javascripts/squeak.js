var tag = document.createElement('script');
tag.src = 'https://www.youtube.com/iframe_api';
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;
function onYouTubeIframeAPIReady() {
  player = new YT.Player('ytplayer', {
    width: '60%',
    height: '60%',
    playerVars: {
      'autoplay': 0,
      'autohide': 1,
      'rel': 0,
      'showinfo': 0,
      'modestbranding': 1,
    },
    videoId: '9RjJ6Og6lVc',
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });
}

function onPlayerReady(event) {
  event.target.playVideo();
}

function loadVideo(videoID) {
  if (ytplayer) { player.loadVideoById(videoID); }
}

function onPlayerStateChange(event) {
  if (event.data == 0) { changeVid('next'); }
}

var index = 0;

function resetIndex(){
  index = 0 ;
  changeSrc();
}

function changeVid(way) {
  if (way == 'next') {
    index++;
    changeSrc();
  }
  else if (way == 'previous') {
    index--;
    changeSrc();
  }
}

function changeSrc() {
  var base_url = "https://gdata.youtube.com/feeds/api/videos?q=";
  var search_input = document.getElementById("searchbox").value;
  var new_url = base_url + search_input + "&format=5&max-results=50&orderby=relevance&time=this_month&v=2&alt=jsonc&callback=showVideo";
  document.body.appendChild(document.createElement('script')).src = new_url;
}

function showVideo(response) {
  var data = response.data ;
  if(data.items[index].accessControl.syndicate=="allowed" && data.items[index].restrictions==null) {
    var items = response.data.items;
    var item = items[index];
    videoid1 = item.id;
    vidtitle = item.title;
    document.getElementById("title").innerHTML = vidtitle;
    loadVideo(videoid1);
  }
  else {
    changeVid('next') ;
  }
}

$(function() {
  $('#bck').click(function() { changeVid('previous') });
  $('#fwd').click(function() { changeVid('next') });

  $('#bck').hover(
    function() { $(this).attr('src', 'https://googledrive.com/host/0BzGPB-VGfaP5amRHcWZpZXlmU0E/back_hvr.png'); },
    function() { $(this).attr('src', 'https://googledrive.com/host/0BzGPB-VGfaP5amRHcWZpZXlmU0E/back.png'); }
  );

  $('#fwd').hover(
    function() { $(this).attr('src', 'https://googledrive.com/host/0BzGPB-VGfaP5amRHcWZpZXlmU0E/fwd_hvr.png'); },
    function() { $(this).attr('src', 'https://googledrive.com/host/0BzGPB-VGfaP5amRHcWZpZXlmU0E/fwd.png'); }
  );

  $('#searchbox').keyup(function(e) {
    if (e.keyCode == 13) { changeSrc(); resetIndex(); };
  });

  $('#searchbox_submit').click(function() { changeSrc(); resetIndex(); });
});
