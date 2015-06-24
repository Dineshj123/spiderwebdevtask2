var country,state,city,pinCode,latitude,longitude;
function func(){return;}
function createCORSRequest(method, url) 
{
  var xhr = new XMLHttpRequest();
  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari.
    xhr.open(method, url, true);

  } 
  else if (typeof XDomainRequest != "undefined") 
  {
    // XDomainRequest for IE.
    xhr = new XDomainRequest();
    xhr.open(method, url);

  } 
  else {
    // CORS not supported.
    xhr = null;
       }
  return xhr;
}
function initialize()
{
var myCenter=new google.maps.LatLng(13.0827,80.2707);
if(!latitude&&!longitude){
latitude=13.0827;
longitude=80.2707;
}
var mapProp = 
  {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker=new google.maps.Marker({
  position:myCenter,
  draggable:true,
  });
  google.maps.event.addListener(marker, 'dragend', function(evt)
  {
latitude= evt.latLng.lat().toFixed(3);
longitude= evt.latLng.lng().toFixed(3);
if(latitude&&longitude){
  // alert("hi");
var url="http://maps.googleapis.com/maps/api/geocode/json?latlng="+
        latitude+","+longitude+"&sensor=true";
		//alert(url);
    var xhr = createCORSRequest('POST', url);
           if (!xhr) 
           {
             alert('CORS not supported');
           }
         
           xhr.onload = function() 
           {
            var data =JSON.parse(xhr.responseText);
            if(data.results.length>0)
            {
            var locationDetails=data.results[0].formatted_address;
            var  value=locationDetails.split(",");
            
            count=value.length;
            
             country=value[count-1];
             state=value[count-2];
             city=value[count-3];
             pin=state.split(" ");
             pinCode=pin[pin.length-1];
             state=state.replace(pinCode,' ');			 
document.getElementById("box").value=latitude;
document.getElementById("box1").value=longitude;
document.getElementById("cityname").value=city;
 var url="http://api.openweathermap.org/data/2.5/weather?lat="+latitude+"&lon="+longitude;
 var xmlhttp;
               if (window.XMLHttpRequest)
               {
               xmlhttp=new XMLHttpRequest();
               }
               else
               {
               xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
               }
                       xmlhttp.onreadystatechange=function()
                       {
                            if (xmlhttp.readyState==4 && xmlhttp.status==200)
                               {
		               //alert(xmlhttp.responseText);
		                var json=JSON.parse(xmlhttp.responseText);
	                                                //	alert(json['main']['temp']);
	                       var infowindow = new google.maps.InfoWindow({
  content:"city"+city+"<br>current temperature in this region:"+json['main']['temp']+"&deg;F<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;currently:"+json['weather'][0]['main']
});
infowindow.open(map,marker);
	                       }
                        }                     
xmlhttp.open("POST",url,true);
xmlhttp.send();
              document.getElementById("current").innerHTML=country+
               " | "+state+" | "+city+"  | "+pinCode;
			}
            else
            {
             alert("Oops!!you have entered a wrong location address.Try again with a valid one.This might me ocean!!!");
            }
            
           };

           xhr.onerror = function() 
           {
               alert('Woops, there was an error making the request.<br>There may internet connection problem!!!');
               
           };
        xhr.send();
 
}});
 marker.setMap(map);
 }
		google.maps.event.addDomListener(window, 'load', initialize);
