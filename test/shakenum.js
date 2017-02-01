  $(document).ready(function () {
        init();
    });
function init() {
    if (window.DeviceMotionEvent) {
        window.addEventListener('devicemotion', deviceMotionHandler, false);
    }
}
//define when to excute function
var SHAKE_THRESHOLD = 3000;
//define x,y,z and update_time
var last_update = 0;
var x;
var y;
var z;
var last_x;
var last_y;
var last_z;
var count = 0;
function deviceMotionHandler(eventData) {

    var acceleration = eventData.accelerationIncludingGravity;

    // get current time
    var curTime = new Date().getTime();
    var diffTime = curTime - last_update;

    if (diffTime > 100) {
        last_update = curTime;

        x = acceleration.x;
        y = acceleration.y;
        z = acceleration.z;

        var speed = Math.abs(x + y + z - last_x - last_y - last_z) / diffTime * 30000;

        if (speed > SHAKE_THRESHOLD) {
            // start action
            count++;
			if(count<=99){
				$('#percent').html(count+"%");
				$('.loading').height(count);
			}
            else{
				$('#percent').html('100%');
				$('.loading').height(100);
			}

        }//end action

        last_x = x;
        last_y = y;
        last_z = z;
    }
}
