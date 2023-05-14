package ExamIntroJava_Barille_Thomas_group1;

import java.util.ArrayList;

public abstract class Vehicule {
    ArrayList<Creature> passagers = new ArrayList();
    int nbMaximumPassagers;

    public boolean ajouterPassager(Creature creature) {
        if (passagers.size() < nbMaximumPassagers) {
            passagers.add(creature);
            System.out.println("Passager ajouté");
        }
        else {
            System.out.println("La capsule est pleine");
        }
        return false;
    }

}
