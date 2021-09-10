import ballerina/io;

public function main() {
    string name = io:readln("What is your name?");
    io:println("Hello my name is "+name);
    io:println("SMD");
}
