package exoAlgo;

import java.util.Scanner;  // Import the Scanner class

public class exo2 {
    public static void main(String[] args) {
        Scanner myObj = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Donnez vos coins");


        int coin = myObj.nextInt();  // Read user input

        System.out.println("Vous avez gagné: " + coin + " coin");  // Output user input
        int life = coin / 100 ;
        System.out.println("Vous avez gagné: "  + life + " vies");  // Output user input
        int restCoin = coin - life*100;
        System.out.println("Il vous reste: "  + restCoin + " coins");  // Output user input


    }
}
