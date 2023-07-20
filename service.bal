import ballerina/http;

configurable string cfg = ?;

service / on new http:Listener(9090) {

    resource function get greeting(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "hello this is configurable value " + cfg + "check this!";
    }
}
