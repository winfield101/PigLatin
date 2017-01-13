
import java.util.*;
public void setup() {
 String lines[] = loadStrings("words.txt");
 System.out.println("there are " + lines.length + " lines");
 for (int i = 0 ; i < lines.length; i++) {
   System.out.println(pigLatin(lines[i]));
 }
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
 String s = new String (sWord);
 for (int i =0; i <sWord.length();i++)
 {
  String t = s.substring(i,i+1);
	 if (t.equals("a")||t.equals("e")||t.equals("i")||t.equals("o")||t.equals("u"))
	 {
  	  return i;
	 }
 }
 return -1;
}
public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
 if(findFirstVowel(sWord) == -1)
 {
  return sWord + "ay";
 }
 if(findFirstVowel(sWord) == 0)
 {
  return sWord + "way";
 }
 if (sWord.substring(0,2).equals("qu"))
 {
  return sWord.substring(2) + "quay";
 }
 if (findFirstVowel(sWord) >= 1)
 {
  return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
 }
  return "ERROR!";
}

