package exoAlgo;

public class exoDe {
    public static void main(String args[]) {

        int numAlea = (int) (Math.random() * 12);
        System.out.println(numAlea + 1);
        if(numAlea + 1 == 7 ){
            System.out.println("T'as gagné batard");
        }
        else{
            System.out.println("T'as perdu batard");
        }
    }
}
