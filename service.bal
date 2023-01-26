import ballerina/http;
import ballerina/io;

# A service representing a network-accessible API
# bound to port `9090`.
configurable string cfg = ?;
configurable int[] intAr = ?;
configurable int[] intAr2 = [];
configurable int[3] intAr3 = [];
configurable int[3] intAr4 = ?;
configurable string greeting = "heelo";


service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        io:println(intAr);
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return greeting+ ", "+ name + "this is configurable value " + cfg + "check this";
    }
}
