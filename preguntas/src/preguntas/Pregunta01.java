package preguntas;

public class Pregunta01 {
		
	public int metodoQueHaceAlgo(int valor ) {
		if (valor < 3) {
			return valor;
		}else {
			return metodoQueHaceAlgo(valor-1)*metodoQueHaceAlgo(valor-2);
		}
	}
}
