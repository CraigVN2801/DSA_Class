import ballerina/io;
public function main() returns error?{
    int counter = 0;
    int counter2 = 0;
    int numberOfStudents = 3; //Number of students should be entered here. Its is limited to 3 for now.
    string[] names = [];
    string[] timeEntered = [];

    while (counter < numberOfStudents) {
        string inputName = io:readln("Enter your name: ");
        string inputTime = io:readln("Enter the time: ");
        //schoolAttendence(inputName, inputDate);
        names[counter] = inputName;
        timeEntered[counter] = inputTime;
        counter += 1;
    }

    io: println("Student Names\t\t\tTime Entered\n");

    while (counter2 < numberOfStudents){
        string message = names[counter2] + "\t\t\t\t" + timeEntered[counter2];
        io: println(message);
        counter2 += 1;
    }

    io:print("\nTotal number of students that attended: ");
    io:println(numberOfStudents);
}

//public function schoolAttendence(string name, string date) {
//    io: println(date + " " + name);
//}
