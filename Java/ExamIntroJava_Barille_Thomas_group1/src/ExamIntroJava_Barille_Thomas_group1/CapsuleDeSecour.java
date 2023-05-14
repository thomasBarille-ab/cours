package ExamIntroJava_Barille_Thomas_group1;

import java.util.ArrayList;

public class CapsuleDeSecour {
    ArrayList<Creature> passagers = new ArrayList();
    int nbMaximumPassagers;
    boolean isInSpace;

    CapsuleDeSecour(int nbMaximumPassagers, boolean isInSpace, ArrayList<Creature> passagers) {
        passagers = new ArrayList();
        nbMaximumPassagers = 3;
        isInSpace = false;
    }

    CapsuleDeSecour(int nbMaximumPassagers) {
        this.nbMaximumPassagers = nbMaximumPassagers;
        passagers = new ArrayList();
        isInSpace = false;
    }

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

    public void lanceCapsule() {
        if (isInSpace == true) {
            System.out.println("Voici la liste des passagers" + passagers);
        } else {
            System.out.println("La capsule n'est pas dans l'espace");
        }
    }
}
