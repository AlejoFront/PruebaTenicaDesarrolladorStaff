package preguntas;

import java.util.Iterator;

public class Pregunta03 {
	public String  NumPerfect(int valor) {
		String msg;
		int aux = 0;
		for (int i = 1; i < valor; i++) {
			if (valor % i == 0) {
				aux += i;
			}
		}
		if (aux == valor) {
			return msg = valor+ " es perfecto";
		}else {
			return msg = valor+" No es perfecto";
		}
	}
}
