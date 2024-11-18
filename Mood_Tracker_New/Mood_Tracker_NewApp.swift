import SwiftUI
import Firebase

@main
struct Mood_Tracker_NewApp: App {
    
    init() {
        FirebaseApp.configure() // Initialize Firebase
        print("Configured Firebase!")
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

