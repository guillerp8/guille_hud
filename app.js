$(function(){

    window.addEventListener("message", function(event){

        if ( event.data.coche == true ) {
            var selector = document.querySelector("#todo")
            selector.style = "display:none;"
            
        }
        if ( event.data.coche == false ) {
            var selector = document.querySelector("#todo")
            selector.style = "display:block;"
            
        }

        $("#vida").css("opacity", (event.data.vida) + "%");
        $("#escudo").css("opacity", (event.data.escudito) + "%");
        $("#agua").css("opacity", (event.data.bebida) + "%");
        $("#comida").css("opacity", (event.data.comida) + "%");
        $("#estres").css("opacity", (event.data.estres) + "%");
        
        
    })
        
})
