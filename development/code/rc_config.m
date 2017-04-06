class func readJSONFile( fileName: RCFile ) -> Data? {
    var returnData : Data?
    let file = fileName.rawValue
    
    if let dir = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, 
            FileManager.SearchPathDomainMask.userDomainMask, true).first,
        let path = NSURL(fileURLWithPath: dir).appendingPathComponent(file) {
        returnData = NSData(contentsOf: path) as Data?
    }
    return returnData
}
