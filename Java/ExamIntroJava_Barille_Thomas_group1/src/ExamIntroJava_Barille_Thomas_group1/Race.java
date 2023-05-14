package ExamIntroJava_Barille_Thomas_group1;

public enum Race {
    Humain(18),
    Calamaris(3),
    Klackons(6),
    Klingon(12),
    Psilon(24),
    Boron(48),
    BarilleThomas(96);

    int ageAdulte;

    Race(int ageAdulte) {
        this.ageAdulte = ageAdulte;
    }

}
