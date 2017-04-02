  let newNotification = TBNotification()
    newNotification.setTitle("test")
    newNotification.setUserID(11)
    newNotification.setMessage("hello")
    newNotification.sendNotification { (sent, message) in
        DispatchQueue.main.async {
            if sent {
                print("notification sent")
            }
        }
    }
