package exoObjet;

public class Cafetiere {

    public Cafetiere() {

    }

    public void remplirTasse(Tasse tasse) {
        tasse.cafe = Cafe(TypeCafe.MOKA, tasse.quantiteCafeMAx) ;
    }

    public void remplirTasse(Tasse tasse, TypeCafe, double quantiteCafe) {
        tasse.cafe = new Cafe(type, quandtiteCafe) ;
    }

}
