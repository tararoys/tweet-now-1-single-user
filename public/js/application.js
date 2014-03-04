$(document).ready(function() {


  $( "#tweet" ).submit(function( event ) {
    event.preventDefault();
    console.log("doing it");

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


  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

