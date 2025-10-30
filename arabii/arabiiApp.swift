
import SwiftUI

@main
struct arabiiApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}


struct RootView: View {
    @StateObject private var coordinator = Navigator()
    
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            SignIn()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .signin:
                        SignIn()
                    case .completeProfile:
                        CompleteProfile()
                   
                    }
                }
        }
        .environmentObject(coordinator)
    }
}
