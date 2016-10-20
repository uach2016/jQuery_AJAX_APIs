var phrases = [
 'If you pay peanuts, you get monkeys',
 'The kettle never boils when you look at it',
 'A picture is worth a thousand words',
 'I don´t know what else to say'
];


$('.btn-phrase').on('click', function(){
  var num = Math.floor(Math.random()*phrases.length);
  $('.phrase').text(phrases[num]);
});


$('input').on('keypress', function(){
  var selectedKey = event.keyCode;
  if (selectedKey === 13){
    phrases.push($('input').val());
    $('input').val("");
  }
});
