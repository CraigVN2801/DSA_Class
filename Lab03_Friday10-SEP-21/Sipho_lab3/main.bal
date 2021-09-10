import ballerina/http;

service / on new http:Listener(8080) {
    resource function get greet(string name) returns string {
        return "Hello, " + name + ". How are you doing today?";
    }
}
