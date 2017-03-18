public protocol TBJSONRepresentable {
    var TBJSONRepresentation: AnyObject { get }
}

public protocol TBJSONSerializable: TBJSONRepresentable {  
    init( jsonObject : TBJSON)
    init()
}

