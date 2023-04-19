import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Shipping",
	id: "Shipping-5fbc57f6-b751-4e3a-bc21-48a8fbbd53c9"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
