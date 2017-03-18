public extension TBJSONSerializable {
    var TBJSONRepresentation: AnyObject {
        var representation = [String: AnyObject]()
        for case let (label?, value) in Mirror(reflecting: self).children {
            switch value {
    
            case let value as Dictionary<String, AnyObject>:
                representation[label] = value as AnyObject?
                
            case let value as Array<CGFloat>:
                representation[label] = value as AnyObject?
                
            case let value as Array<String>:
                representation[label] = value as AnyObject?
                
            case let value as Array<AnyObject>:
                var anyObject = [AnyObject]()
                for ( _, objectVal ) in value.enumerated() {
                    var dict = [String:AnyObject]()
                    if let jsonVal = objectVal as? TBJSONRepresentable {
                        let jsonTest = jsonVal as! TBJSONSerializable
                        if let jsonData = jsonTest.toJSON() {
                            for (index, value) in convertStringToDictionary(text: jsonData) ?? [String: AnyObject]() {   
                                dict[index] = value
                            }
                            anyObject.append(dict as AnyObject)
                        }
                    }
                }
                representation[label] = anyObject as AnyObject?
                
            case let value as AnyObject:
                if let myVal = convertToStr(name: value) {
                    representation[label] = myVal
                } else {
                    if let jsonVal = value as? TBJSONRepresentable {
                        var dict = [String:AnyObject]()
                        let jsonTest = jsonVal as! TBJSONSerializable
                        if let jsonData = jsonTest.toJSON() {
                            for (index, value) in convertStringToDictionary(text: jsonData) ?? [String: AnyObject]() {
                                dict[index] = value
                            }
                        }
                        representation[label] = dict as AnyObject
                    }
                }
            default:
                break
            }
        }
        return representation as AnyObject
    }
}
