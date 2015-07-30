$(document).ready(function() {
  
  var messageCount = parseInt($('#message_count').val());

  // Polling technique
  // http://techoctave.com/c7/posts/60-simple-long-polling-example-with-javascript-and-jquery
  (function poll(){
     
     setTimeout(function(){
        $.ajax({ url: "/messages", success: function(data){

          // console.log(data);

          if(parseInt(data.size, 10) > messageCount) {
            // alert ("there is a new message!");
            location.reload();
          }
          else {
            console.log("poll");
            poll();
          }

        }, dataType: "json"});
    }, 10000);
  })();

});