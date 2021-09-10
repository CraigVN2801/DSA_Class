import ballerina/io;

public function main() {
    
    int count = 0;
    string[] names = [];
    string[] times = [];


//Input of names and times (Restricted to 5 for this)
    while (count<5){
    string studentName = io:readln("Enter Student Name : ");
    string timeOfArrival = io:readln("Enter Time of Arrival : ");
    names[count]=studentName;
    times[count]=timeOfArrival;
    count=count+1;
 }
 
//Spacing for cleanliness and readability
 io:println(" ");
 io:println("Below is the List of Student Names and Times of Arrival");
 io:println("_______________________________________________________");
 io:println(" ");


//Printing the list of names and times
    count=0;
    while (count<5){
    io:print(names[count], "  |  ");
    io:println(times[count]);
    count=count+1;
 }

 io:println("_______________________________________________________");

}

