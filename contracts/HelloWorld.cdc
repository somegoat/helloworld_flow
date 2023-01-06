  access(all) contract HelloWorld {

    // Declare a public field of type String.
    //
    // All fields must be initialized in the init() function.
    access(all) var greeting: String
    access(all) var counter: UInt32

    // The init() function is required if the contract contains any fields.
    init() {
        self.greeting = "Hello, World!"
        self.counter = 1
    }

    // Public function that returns our friendly greeting!
    access(all) fun hello(): String {
        return self.greeting
    }

    pub fun show_counter(): UInt32 {
        return self.counter
    }

    // Public function to change our greeting
    pub fun set_greeting(greet: String) {
        self.greeting = greet
        self.counter = self.counter + 1
    }

    // Public function to reset our greeting
    pub fun reset_greeting() {
        self.greeting = "Hello, World!"
        self.counter = 1
    }

    // Public function to give a blank greeting
    pub fun no_greeting() {
        self.greeting = ""
        self.counter = self.counter + 1
    }

    // Public function to double the greeting
    pub fun double_greeting() {
        self.greeting = self.greeting.concat(" ").concat(self.greeting)
        self.counter = self.counter + 1
    }
}
 