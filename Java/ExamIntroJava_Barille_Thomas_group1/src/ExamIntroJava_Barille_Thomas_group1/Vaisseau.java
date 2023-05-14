package ExamIntroJava_Barille_Thomas_group1;

import java.util.ArrayList;

public class Vaisseau {
    Creature capitaine;
    ArrayList<Creature> passagers = new ArrayList();
    ArrayList<CapsuleDeSecour> capsulesDeSecours = new ArrayList();
    int nbMaximumPassagers;

    Vaisseau() {
        Creature capitaine = Humain;
        passagers = new ArrayList();
        capsulesDeSecours = new ArrayList(2);
        nbMaximumPassagers = 10;
    }

    Vaisseau(Creature capitaine, int nbMaximumPassagers) {
        this.capitaine = capitaine;
        this.nbMaximumPassagers = nbMaximumPassagers;
        passagers = new ArrayList();
    }

    public boolean ajouterPassager(Creature creature) {
            if (passagers.size() < nbMaximumPassagers) {
                passagers.add(creature);
                System.out.println("Passager ajouté");
            } else {
                System.out.println("Le vaisseau est plein");
            }
             return false;
    }
}
