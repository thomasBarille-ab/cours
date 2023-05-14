package exoAlgo;

public class exoPsW {
    public static void main(String args[]) {

        int psw = 1;
        int psw2 = 1;
        int psw3 = 1;
        int psw4 = 1;

        while(true){
            psw = (int) (Math.random() * 10);
            psw2 = (int) (Math.random() * 10);
            psw3 = (int) (Math.random() * 10);
            psw4 = (int) (Math.random() * 10);

            System.out.println(psw + "" + psw2 + "" + psw3 + "" + psw4);
            if(psw == 0 && psw2 == 0 && psw3 == 0 && psw4 == 0){
                System.out.println("Matrix resurrection");
                break;
            }
        }



    }
}
