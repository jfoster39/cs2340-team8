
var color = " ";
$(document).ready(function() {
   $('div').mouseenter(function() {
	   $(this).animate({
		   height: '+=10px'
	   });
   });
   $('div').mouseleave(function() {
	   $(this).animate({
		   height: '-=10px'
	   }); 
   });
   $('div').click(function() {
	   $(this).toggle(1000);
	   color = (this).id;
	   document.getElementById('colorBar').style.background = color;
	   document.getElementById('color').value = color;
	   $(this).remove;
   }); 
});
