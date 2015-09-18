
import java.util.Random;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author zopp
 */
public class functions extends mostrar{
    
    public functions() {
        
    }
    
    public Object message(){
        return "<!DOCTYPE html>"
                + "<html>"
                + "<head>"
                + "<title> Call from class functions"
                + "</head>"
                + "<body>"
                + "</body>"
                + "</html>";
    }    
    
    public String number(){
        Random random_number = new Random();
        Random count = new Random();
        String[] characteres = {"a","A","e","E","i","I","o","O","u","U"};
        return random_number.nextInt(100) + "["+ characteres[count.nextInt(10) - 1] +"]";
    }
    
}
