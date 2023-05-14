package exoObjet;

import javax.swing.JOptionPane;

public class AMain {

    public static void main(String args[]) {
        boolean reussite = true ;

        Cafetiere cafetiere = new Cafetiere() ;

        Tasse tasseDefault = new Tasse() ;
        Tasse tasseBut = new Tasse() ;
        Tasse tasseAvecValeurs = new Tasse() ;
        Tasse tasseAvecValeursNegative = new Tasse() ;
        Tasse tasseVide = new Tasse() ;

        cafetiere.remplirTasse(TasseDefault);
        cafetiere.remplirTasse(tasseBut);
        cafetiere.remplirTasse(tasseAvecValeurs, TypeCafe.BOURBON, 200.4);
        cafetiere.remplirTasse(tasseAvecValeurNegative, TypeCafe.JAVA, 200.2);

        tasseBut.boire();
        tasseAvecValeurs.boire(100.2) ;
        tasseAvecValeursNegative.boire(300.2);

        String presentationTypeCafe = "" ;

        for(TypeCafe : TypeCafe.values())
            presentationTypeCafe += type.name() = "/n";

    }
}
