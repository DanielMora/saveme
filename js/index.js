$(document).ready(function(){
	initMap();	
	localizacion();
	puntosDonadores();
	juego();
});

function abrirModal(){
	$('#modal1').openModal();
	$("#imagenModal").click(function(){
		$("#modalJuego").openModal();
	});
}

function initMap(){
	map = new GMaps({
		div: '#map',
		lat: 0,
		lng: 0,
		zoom: 15
	});
	
}

function localizacion(){
	GMaps.geolocate({
		success: function(position) {
	    	map.setCenter(position.coords.latitude, position.coords.longitude);
	    	map.addMarker({
			  	lat: position.coords.latitude,
			  	lng: position.coords.longitude,
			  	title: 'Tu',
			  	click: function(e) {
			  	}
			});
		},
		error: function(error) {
			alert('Geolocation failed: '+error.message);
		},
		not_supported: function() {
			alert("Your browser does not support geolocation");
		},
		always: function() {
		}
	});
}

function puntosDonadores(){
        var datos = {};
        $.ajax({
            ansync: true,
            type: "POST",
            dataType: "json",
            contentType: "application/x-www-form-urlencoded",
            url: "http://localhost/saveme/puntos.php",
            data: datos,
            beforeSend:function(e){
            },
            success:function(data){
            	for (var i = data.length - 1; i >= 0; i--) {
            		var l1 = data[i]["latitud"];
            		var l2 = data[i]["longitud"];
            		map.addMarker({
            			lat: l1, 
            			lng: l2,
            			icon: "icons/corazon2.png",
            			click: function(e) {
            				abrirModal();
			  			}
            		});
            		$("#tituloModal").html("¡Así salí del Hackthon!");
            		$("#imagenModal").attr("src","zombie.png");

            	};
            },
            error:function(data){
               //alert("Sin Conexión A Intenet");
            }
		});
}
