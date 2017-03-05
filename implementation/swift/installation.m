func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
	let installation = Installation(deviceToken: deviceToken)
	installation.sendInBackground() { ( completed, message) in
		DispatchQueue.main.async {
			if (completed) {
				print(message)
			}
		}
	}
}
