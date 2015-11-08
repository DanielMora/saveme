// function validaDonante(edad,peso,preArterial,pulso,padecimientoHereditario,consumeD){
// 	if(edad>=18 && edad<=65){
// 		if (peso>=50 && peso<=88){
// 			//Ok's La presion es sistolica
// 			if (preArterial>=90 && preArterial<=160){
// 				if (pulso>=60 && pulso<=100){
// 					if(padecimientoHereditario==0){
// 						if(consumeD==0){
// 							//Ok;s
// 						}else{
// 							return false;
// 						}
// 					}else{
// 						return false;
// 					}
// 				}else{
// 					return false;
// 				}
// 			}else{
// 				return false;
// 			}
// 		}else{
// 			return false;
// 		}
// 	}else{
// 		return false;
// 	}
// }
function calcuIMC(peso,altura){
	alert("Si llega");
	var calIMC=peso/pow(altura,2);
	switch calIMC{
		case calIMC<18.5:{
			alert("Flaco");
			break;
		}
		case calIMC>=18.5 && calIMC<24.9:{
			alert("Flaco");
			break;
		}
		case calIMC>=25 && calIMC<26.9:{
			alert("Flaco");
			break
		}
		case calIMC>=27 && calIMC<29.9:{
			alert("Flaco");
			break;
		}
		case calIMC>=30 && calIMC<34.5:{
			alert("Flaco");
			break;
		}
		case calIMC>=35 && calIMC<39.9:{
			alert("Flaco");
			break;
		}
		case calIMC>=40 && calIMC<49.9:{
			alert("Flaco");
			break;
		}
		case calIMC>=50:{
			alert("Flaco");
			break;
		}
	}
}