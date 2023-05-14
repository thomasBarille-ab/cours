package exoObjet;

public class Cafe {
        TypeCafe typeCafe;
        double quantiteLiquideMl = 0;

    Cafe() {
        typeCafe = TypeCafe.MOKA;
        quantiteLiquideMl = 100;
    }
    Cafe(TypeCafe, typeCafe, double quantiteLiquideML) {
        this.typeCafe = typeCafe ;
        this.quantiteLiquideML = quantiteLiquideML ;
    }
}
