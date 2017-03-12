struct Config : TBJSONSerializable {
    
    var colors : [RCColor]!
    var controllers : [RCController]!
    var mainSettings: [String:String]!
    var languagesList : [String]!
    
    var version : String = "0"
    var applicationID : String = ""
    var filePath: String = ""
    var appTheme: String = ""
    var appLive: Int = 1
    var configVersion: String = ""

    init() {}
}