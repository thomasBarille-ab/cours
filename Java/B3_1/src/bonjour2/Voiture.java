package bonjour2;

public class Voiture {
    String nomMarque = "Acura";
    int anneeSortie = 2019;
    String model = "Ford";

    public Voiture() {
        nomMarque = "Acura";
    }

    public Voiture (String nomMarque2) {
        this.nomMarque = nomMarque2;
    }

    public void setMarque(String marque) {
        if("Fiat".equals(marque))
            nomMarque = marque ;
        else
            nomMarque = "Ba non";
    }

    public String getMarque() {
        return nomMarque;
    }
}
