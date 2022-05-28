
/**
 * Testnow
 */
// import scanner, pattern and matcher
import java.util.Scanner;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Testnow {

    public static void main(String[] args) {
        /**
        Create a Java program that determines if two (2) words rhyme.
        Write the import statements to be able to use Scanner, Pattern, and Matcher.
        Enable user input.
        **/
        // Create three (3) String variables.
        // word1 shall store the first word.
        // word2 shall store the second word.
        // sub shall store the last two (2) letters of word1.
        // Initialize a Pattern as defined by the regular expression "[]{_}" + sub + " " For the first blank, allow uppercase and lowercase letters. For the second blank, allow either 1 or 2 letters before sub (contains the last two (2) letters of word1).
        // Initialize a Matcher to store a possible match between your pattern and word2.
        // Use the matches() method to check if the two (2) words rhyme.

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the first word: ");
        String word1 = scanner.next();
        System.out.println("Enter the second word: ");
        String word2 = scanner.next();
        String sub = word1.substring(word1.length() - 2);
        System.out.println(sub);
        Pattern pattern = Pattern.compile("[a-zA-Z]{1,2}" + sub+"");
        Matcher matcher = pattern.matcher(word2);

        if(matcher.matches()) {
            System.out.println(word2 + " rhymes with " + word1);
        } else {
            System.out.println("I'm not sure! Sorry!");
        }
        
    }
}