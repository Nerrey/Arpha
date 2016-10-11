var source;
source = new EventSource('/videotest');


source.onmessage = function(event) {
  // return $('#canvas').append($.parseHTML(event.data));
  refresh(event.data);
  // return $('#test').find('.media-list').append($.parseHTML(event.data));
};

function refresh(data) {
  var canvas = document.getElementById('canvas');
  var context = canvas.getContext('2d');
  var imageObj = new Image();
  imageObj.src = data;
  context.drawImage(imageObj, 0, 0);

};
// jQuery(function() {
//   $('#new_comment').submit(function() {
//     return $(this).find("input[type='submit']").val('Sending...').prop('disabled', true);
//   });
// });