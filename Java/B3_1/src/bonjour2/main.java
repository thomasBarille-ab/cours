package bonjour2;

public class main {
    public static void main(String[] args) {
        Voiture voiture1 = new Voiture("Ford");
        voiture1.nomMarque = "Renault";
        voiture1.anneeSortie = 2010;
        voiture1.model = "Clio";

        System.out.println("La voiture 1 est une " + voiture1.nomMarque + " " + voiture1.model + " sortie en " + voiture1.anneeSortie);
        int valeur = 0;

        for(int i = 0 ; i < 5 ; i++) {
            valeur = 5;
        }
    }
}
