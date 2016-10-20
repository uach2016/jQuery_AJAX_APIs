$(document).ready(function(){

  $('.js-btn').on('click', function(){
    event.preventDefault();

    $.ajax({
      type: 'GET',
      url:'https://api.spotify.com/v1/search?type=artist&query=' + $('.search').val(),
      success: showArtist,
      error: function (error) {
          console.log("Error!");
      }
    });
  });
});

  function showArtist(response){
    response['artists']['items'].forEach(function(artist) {
      $('.list').append('<li>' + artist.name + '</li>');
      showImages(artist);

    });

  }

  function showImages(artist){
    if (artist['images'].length > 0) {
      var artistImage = artist['images'][0]['url'];
      $('.list').append('<img width="300px" src="'+ artistImage +'"/>');
    };
  }


