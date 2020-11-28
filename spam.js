var message = "Hi"; //Message you want to send
var interval = 1  ; 
var count = 10 ; //No.of messages(Change this to increase the no.of messages to send)
var notifyInterval = 1 ; //Interval of time after which the message is printed in console
var i = 0 ; 
var timer = setInterval(function(){
	document.getElementsByClassName('composer_rich_textarea')[0].innerHTML = message;
	$('.im_submit').trigger('mousedown');	
	i++;
	if( i  == count )
	clearInterval(timer);
	if( i % notifyInterval == 0)
	console.log(i + ' MESSAGES SENT');
} , interval * 200 ) ; //Time interval between consecutive messages in milliseconds
