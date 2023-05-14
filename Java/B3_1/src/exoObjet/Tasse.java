package exoObjet;

public class Tasse {
    double quantiteCafeMax;
    static Cafe cafe;

    Tasse() {
        quantiteCafeMax = 100;
    }

    Tasse(float quantiteCafeMax) {
        this.quantiteCafeMax = quantiteCafeMax;
    }

    public double boire(double quantiteBut) {
        cafe.quantiteLiquideMl -= quantiteBut;
        return cafe.quantiteLiquideMl;
    }

    public static void boire() {
        cafe.quantiteLiquideML = 0 ;
    }
}
