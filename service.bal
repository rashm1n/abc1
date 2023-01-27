import ballerina/http;
import ballerina/io;

# A service representing a network-accessible API
# bound to port `9090`.
configurable string cfg = ?;
configurable int[] intAr = ?;
configurable int[] intAr2 = [];
configurable int[3] intAr3 = [1,2,3];
configurable int[3] intAr4 = ?;
configurable int[3] intAr5 = [];
configurable int[*] intAr6 = [1,2];

configurable string[] strAr1 = [];
configurable string[] strAr2 = ?;
configurable string[2] strAr3 = ["1","2"];
configurable string[2] strAr4 = ?;
configurable string[*] strAr5 = ["a","c","b"];


configurable float[] floatAr1 = [];
configurable float[] floatAr2 = ?;
configurable float[2] floatAr3 = [1.1,2.2];
configurable float[2] floatAr4 = ?;
configurable float[*] floatAr5 = [1.1,2.2,3.3];


configurable boolean[] boolAr1 = [];
configurable boolean[] boolAr2 = ?;
configurable boolean[2] boolAr3 = [true,false];
configurable boolean[2] boolAr4 = ?;
configurable boolean[*] boolAr5 = [true,true,false];


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
        return "hello"+ name + "this is configurable value " + cfg + "check this";
    }
}
