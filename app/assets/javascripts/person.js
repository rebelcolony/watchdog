// add selected class to radio and checkbox
$(document).ready(function(){
    //add the Selected class to the checked radio button
    $('label.radio input:checked').parent().addClass("selected");
    //If another radio button is clicked, add the select class, and remove it from the previously selected radio
    $('label.radio input').click(function () {
        $('label.radio input:not(:checked)').parent().removeClass("selected");
        $('label.radio input:checked').parent().addClass("selected");
    });
});