$(document).ready(function() {
  
  //left panel categories changes color/design when clicked
  $(".focus").focusin(function() {
    $(this).css("border-bottom", "2px solid #a9a9a9")
    $(this).css("border-left", "4px solid #EC9B21")
    $(".source_url", this).css("color", "#2F3030")
    
  });
  $(".focus").focusout(function() {
    $(this).css("border-left", "0px solid #dedede")
    $(this).css("border-bottom", "2px solid #dedede")
    $(".source_url", this).css("color", "#00716C")

  });
  
});