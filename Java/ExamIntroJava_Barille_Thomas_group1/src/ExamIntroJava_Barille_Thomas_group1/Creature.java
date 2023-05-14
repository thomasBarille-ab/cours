package ExamIntroJava_Barille_Thomas_group1;

public class Creature {
    Race race;
    String nom;
    int age;

    Creature(){
        race = Race.Humain;
        nom = "BarilleThomas";
        age = 42;
    }

    Creature(Race race, String nom, int age) {
        this.race = race;
        this.nom = nom;
        this.age = age;
        System.out.println("Création de la créature " + nom + " de race " + race + " et d'age " + age);
    }

    public boolean isAdulte() {
        if (age >= race.ageAdulte) {
            boolean adulte = true;
            System.out.println(nom + " est adulte");
        } else {
            boolean adulte = false;
            System.out.println(nom + " n'est pas adulte");
        }
        return false;
    }

    public void afficherInformations() {
        System.out.println("Mon nom est" + nom + " je suis un " + race + ". Je suis un " + isAdulte() +);
    }

}
