
$('input#person_red').change(function(){
    if($(this).is(":checked")) {
      $('div.entry_header').addClass("red");
    } else {
      $('div.entry_header').addClass("normal");
    }
});