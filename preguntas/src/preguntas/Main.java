package preguntas;

public class Main {
	
	public static void main(String[] args) {
		
		
		System.out.println("1- ¿Cuál es el resultado de ejecutar el siguiente pseudo-código con el valor “5”?");
		Pregunta01 preg1 = new Pregunta01();
		int response01 = preg1.metodoQueHaceAlgo(5);
		System.out.println("\nRespuesta 01: "+ response01);
		
		
		
		
		
		System.out.println("\n\n\n****************************\n\n\n");
		System.out.println("2- Realice un algoritmo que reciba como parámetro dos "
				+ "números enteros y retorne la\n"
				+ "división de ambos números.   (4/2)");
		Pregunta02 preg2 = new Pregunta02();
		int response02 = preg2.division(4, 2);

		System.out.println("\nRespuesta 01: "+ response02);
		
		
		
		
		System.out.println("\n\n\n****************************\n\n\n");;
		System.out.println("3- Un entero positivo se llama perfecto si éste es igual a la suma de todos sus divisores\n"
				+ "diferentes de él. Por ejemplo:");
		System.out.println("6 es perfecto porque 6 = 1 + 2 + 3.\n"
				+ "28 es perfecto porque 28 = 1 + 2 + 4 + 7 + 14");
		
		System.out.println("Escriba un programa que reciba como entrada n números enteros positivos, y por cada uno\n"
				+ "de ellos imprima sus divisores e indique si es perfecto o no.");
		
		Pregunta03 preg3 = new Pregunta03();
		String response03 = preg3.NumPerfect(6);

		System.out.println("\nRespuesta 03: " +  response03);
		
		
		
		
		
		
		
		System.out.println("\n\n\n****************************\n\n\n");
		
		System.out.println("4- Escriba un algoritmo que imprima los números del 1 al 100. "
				+ "Pero para los múltiplos\n"
				+ "de 3 imprima \"Fizz\" en lugar del número y para los múltiplos de 5 "
				+ "imprima \"Buzz\". Para los\n"
				+ "números que son múltiplos de ambos imprima \"FizzBuzz\"."
				);
		
		Pregunta04 preg4 = new Pregunta04();
		preg4.metodo();
		
	}
	
	
	
}
