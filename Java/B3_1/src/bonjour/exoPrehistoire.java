package bonjour;

public class exoPrehistoire {
    public static void main (String[] args) {
        var annee = -30000;
        var nbClanMembers = 127;
        var nbChanceux = 8589934592L;
        var nomClan = "Pierre";
        var modifNom = "e";
        var isFeuilleLetal = false;
        var isGrosseBrancheLetal = true;
        var eauEnPeauDeMammouth = 10.5;
        var eauTotal = 1234567890123456789012345678901234567890.12345678901234567890;

        System.out.println("Nous somme en " + annee + " av. J.-C, mon nom est " + nomClan + modifNom + " et je suis un brillant scientifique (Mon nombre favori est " + nbChanceux + ", gros chiffre gros cerveau !)\nJe suis un des " + nbClanMembers + " membres du clan des " + nomClan + "\n\nMes recherches m'ont permis de découvrir que frapper quelqu’un avec une feuille d'arbre " + (isFeuilleLetal ? "est mortel" : "n'est pas mortel") + ".\nCependant le frapper avec une grosse branche du même arbre " + (isGrosseBrancheLetal ? "est mortel" : "n'est pas mortel") + "!\n\nJ'ai également calculé que notre réserve d'eau s'élève actuellement à exactement " + eauEnPeauDeMammouth + " PMP (Peau de Mammouth Pleine).\nJ'estime que la réserve de l'océan s'élève à environ " + eauTotal + " PMP ! \n\n" );
    }
}
