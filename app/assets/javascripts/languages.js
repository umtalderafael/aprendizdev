$( document ).ready(function() {
	limpar();    
});

$('input[type=checkbox]').change(function() {
	
    if(this.checked) {

    	$(".lista-de-linguagens").show()

    	if ( validarStorage('linguagens') ) {
    		var linguagens = pegarStorage('linguagens')  
    		var id =  getValue($(this))		  
    		var label = getLabel($(this))		    		
    		linguagens.push({'id' : id, 'label': label})
    		getTotal(id, label)
			criarStorage('linguagens', linguagens)    		
    	}
    	else {
    		var linguagens = []    		
    		linguagens.push({'id' : getValue($(this)), 'label': getLabel($(this))})
    		getTotal(linguagens[0].id, linguagens[0].label)
    		criarStorage('linguagens', linguagens)      		
    	}
    }
    else {

    	if (validarStorage('linguagens')) {

    		$(".lista-de-linguagens").show()

    		var linguagens = pegarStorage('linguagens') 
 
			for (var i = 0; i < linguagens.length; ++i) {
				if (linguagens[i].id == $(this).val()) {
					removerLinguagem(linguagens[i].id)
					linguagens.splice(i, 1)				
				}
			}

			if (linguagens.length > 0) {
				criarStorage('linguagens', linguagens)				
			}
			else {
				limpar()
			}   		
    	}
    }			
});

function limpar() {
	$(".lista-de-linguagens").hide();
	if (validarStorage('linguagens')) localStorage.removeItem('linguagens')
}

function getLabel(check) {
	return check[0].labels[1].innerText.trim()
}

function getValue(check) {
	return check.val()
}

function getTotal(id, label){

	$.ajax({
      type: "GET",
      contentType: "application/json",      
      url: "/users/quantidade",
	  data: { 
        "id": id, 
        "label" : label, 
	  },	      
      success: function(data){

        if (data) {

        	var total;
        	if (data.total == 0) {
        		total = 'Nenhum usuário'
        	}
        	else if(data.total == 1){
        		total = '1 usuário'
        	}
        	else if(data.total > 1) {
        		total = data.total + ' usuários'
        	}
        	adicionarLinguagem(id, data.label, total)
        }	        
      }
    });
}

function adicionarLinguagem(id, label, total) {

    var badge = $("<button type='button' class='btn btn-sm btn-primary m-1' id='"+ id +"'>" + 
                  label + " <span class='badge badge-light'>" + total + "</span>" + 
                "</button>").hide().fadeIn()

	$(".lista-de-linguagens").prepend( badge )
}

function removerLinguagem(label){
	$("#" + label).fadeOut()
}

function criarStorage(nome, dados) {		
	localStorage.setItem(nome, JSON.stringify(dados) ) 
} 

function pegarStorage(nome) { 		
	return JSON.parse( localStorage.getItem(nome) )
}

function validarStorage(nome) { 
	var dados =  localStorage.getItem(nome)
	if (dados != null) {
		if (dados != 'null') return true
		else return false
	}
	else{
		return false
	}
}