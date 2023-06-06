import 'dart:math';
main() {
  var c1 = 4;
  print(c1); //prints c1
  print("Value: $c1"); // prints the variable c1 formatted.
  print("Value: ${c1}"); // {} is not required for lone variables. Create
                  // complex expressions with functions, like this:
  print("${cos(c1)}"); // cosine of c1. requires 'dart:math';

  //If we use $ to print a variable, how do we print a literal dollar sign?
  // use \
  print("\$   $c1"); // use \ to escape from the code interpretation for one char
  print("\$\$"); // typing \ gets tedious if you want big dolla bills
  // print lots of escaped characters using raw text:
  print(r"I have $$$$$$$$$" "$c1 dollars"); // raw text and encoded text
  // You can use raw text anywhere you normally use a string:
  String raw_dog = r"Doesn't matter, had $ex!";
  print(raw_dog);
  String c1_stringified = c1.toString(); // convert to string explicitly
            // this is useful if you need to edit the number's printout, like
            // adding commas to large numbers.
  //add 5,000,000 and convert to string. You can group math together.
  c1_stringified = (c1+5000000).toString();
  print(c1_stringified);
  // Append one string onto another to get a new string
  String s = "c1 string: " + c1_stringified;
  print(s);

  // create the same string with thousands separators
  String thousands = "";
  String temp = c1_stringified; //a copy I hope
  // calculate the position of the first comma in the string: modulus (length/3)
  if(temp.length > 3) {
    // copy the beginning of the string
    thousands =
        temp.substring(0, temp.length % 3); // % is the modulo operator. gives the remainder.
    // substring() goes from startIndex (inclusive) to stopIndex (exclusive)
    // so to go from element 1 to 5, you would do substring(0,6)
    // temp.length % 3 would yield, for a 5 digit number, remainder(5/3) = 2
    // so substring would go from index 0 to 2+1-1 (2), which is 3 characters

    // chop off the front
    temp = temp.substring(temp.length % 3, temp.length);
  }
  do {
    // add commas before each set of 3 digits
    thousands += "," + temp.substring(0, 3);
    if (temp.length == 3)  {
      temp = "";
    } else {
      temp = temp.substring(3, temp.length); // chop off the front
    }
  } while(temp.length > 0);
  print(thousands); // c1_stringified but formatted with commas
}