func tryConvert(forKey key:Key, _ defaultVal :Int = 0 ) -> Int {
    var value = defaultVal
    if let int = self[key] as? Int {
        value =  int
    } else {
        guard let test = self[key] as? String else {
            return defaultVal
        }
        guard let integerVal =  Int(test) else {
            return defaultVal
        }
        value = integerVal
    }
    return value
}
