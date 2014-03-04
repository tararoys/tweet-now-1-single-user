$(document).ready(function() {


  $( "#tweet" ).submit(function( event ) {
    event.preventDefault();
    $("#reply").text("Twitter is posting your tweet...");

     $.ajax({
      url : "/tweet",
      type: "POST",
      data : $("#tweet").serialize(),
      success: function(msg)
      { 
          $("#reply").text(msg);
          console.log(msg);
          document.forms["tweet"].reset();
      }

    });
  });

});

