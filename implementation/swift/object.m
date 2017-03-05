struct TestObject: JSONSerializable {

	var name: String!
	init() {}

	init(name:String) {
		self.name = name
	}

	init( dict: [String:Any] ) {
		self.name = dict["name"] as! String
	}
}


var result = [TestObject]()
result.getAllInBackground(ofType:TestObject.self) { (succeeded: Bool, data: [TestObject]) -> () in

	DispatchQueue.main.async {
		if (succeeded) {
			result = data
			print("success")
		} else {
			print("error")
		}
	}
}

let testObject = TestObject(name: "timothy")
// if objectID is set then it is updating else inserting
testObject.sendInBackground("<objectID>"){ (succeeded: Bool, data: NSData) -> () in

	DispatchQueue.main.async {
		if (succeeded) {
			print("scucess")
		} else {
			print("error")
		}
	}
}