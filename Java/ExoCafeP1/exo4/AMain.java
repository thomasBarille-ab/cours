package egs.correction.exo4;

import javax.swing.JOptionPane;


public class AMain {

	public static void main(String args[])
	{
		boolean reussite = true ; 
		
		Cafetiere cafetiere = new Cafetiere() ; 
		
		Tasse tasseDefault = new Tasse() ; 
		Tasse tasseBut = new Tasse() ; 
		Tasse tasseAvecValeurs = new Tasse() ; 
		Tasse tasseAvecValeurNegative = new Tasse() ; 
		Tasse tasseVide = new Tasse() ; 
		
		cafetiere.remplirTasse(tasseDefault);
		cafetiere.remplirTasse(tasseBut);
		cafetiere.remplirTasse(tasseAvecValeurs, TypeCafe.BOURBON, 200.4);
		cafetiere.remplirTasse(tasseAvecValeurNegative, TypeCafe.JAVA, 200.2);
		
		tasseBut.boire(); 
		tasseAvecValeurs.boire(100.2) ; 
		tasseAvecValeurNegative.boire(300.2);
		
		
		String presentationTypeCafe = "" ; 
		
		for(TypeCafe type : TypeCafe.values()) 
			presentationTypeCafe += type.name() + "\n";	
		
		int check1 = JOptionPane.showConfirmDialog(null, "Vous avez actuellement tout ces types de cafe \n" + presentationTypeCafe 
				+ "\nSi vous avez bien fait votre travail cette liste devrai ressembler a ceci  :\n" 
						+ "JAVA\r\n"
						+ "MOKA\r\n"
						+ "TYPICA\r\n"
						+ "BOURBON\r\n"
						+ "BATARD\r\n\n" 
						+ "C'est r�ussi ? ") ;
		
		int check2 = JOptionPane.showConfirmDialog(null, 
				  "Cette tasse devrait contenir 100.0 ml de caf� MOKA \n"
				+ "Ma tasse contient " + tasseDefault.cafe.quantiteLiquideMl + " ml de caf� " + tasseDefault.cafe.typeCafe + "\n\n"
				
				+ "Cette tasse devrait contenir 100.2 ml de caf� BOURBON \n"
				+ "Ma tasse contient " + tasseAvecValeurs.cafe.quantiteLiquideMl + " ml de caf� " + tasseAvecValeurs.cafe.typeCafe + "\n\n"
				
				+ "Cette tasse devrait contenir -100.0 ml de caf� JAVA (Eh oui, ce n'est pas un bug c'est une feature) \n "
				+ "Ma tasse contient " + tasseAvecValeurNegative.cafe.quantiteLiquideMl + " ml de caf� " + tasseAvecValeurNegative.cafe.typeCafe + "\n\n"
				
				+ "Cette tasse devrait contenir 0.0 ml de cafe MOKA \n"
				+ "Ma tasse contient " + tasseBut.cafe.quantiteLiquideMl + " ml de caf� " + tasseBut.cafe.typeCafe + "\n\n"
				
				+ "C'est r�ussi ? "
				) ; 
			
		try {
			tasseVide.boire();
			System.err.println("Nop, quelque chose ne fonctionne pas !");
			reussite = false ; 
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Le programme plante quand je tente de boire dans une tasse vide. Ce n'est pas un bug, c'est une feature ;D");
		}
	
		if(check1 == 0 && check2 == 0 && reussite)
			JOptionPane.showMessageDialog(null, "Bravo tu as r�ussi cet exo ! C'�tait simple non ?");
		else 
			JOptionPane.showMessageDialog(null, "Quelque chose ne fonctionne pas :/ Dommage ! N'h�site pas � demander si tu as besoin d'aide ! ");
		
	}
	
}