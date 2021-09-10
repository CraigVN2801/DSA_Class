import ballerina/random;
import ballerina/io;

public function main() returns error? {

    string name = io:readln("Enter your name:");
    io:println("Good day ",name,", Welcome to the Random factor generator!!");
    //Generate random number between 10(inclusive) and 101(exlusive) 
    int randomNumber = check random:createIntInRange(10,101);
    io:println("Number generated =",randomNumber); //print out generated number

    int count =1;
    int []factors = [];
    while (count < randomNumber) {
        if(randomNumber%count == 0){ //Check if a given number is a factor on generated number
            factors.push(count);
        }
        count=count+1;
    }
    //print out factors of generated numbers
    io:println("Factors of ",randomNumber," are ",factors);
}