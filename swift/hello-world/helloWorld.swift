class HelloWorld {
    class func hello(name: String? = nil) -> String {
        guard let name = name else { return "Hello, World!" }
        return "Hello, \(name)!"
    }
}