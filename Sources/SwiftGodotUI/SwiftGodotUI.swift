// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftGodot
import UIKit

#initSwiftExtension(
    cdecl: "swift_entry_point",
    types: [SwiftGodotUI.self]
)

@Godot
class SwiftGodotUI: RefCounted {
    
    /// Call from Godot to open a native iOS UIKit window :)
    @Callable
    func openViewController(){
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first,
              let rootViewController = window.rootViewController else {
            return
        }
        
        /// Present the UI view
        let viewController = SwiftGodotUIViewController()
        viewController.modalPresentationStyle = .fullScreen
        rootViewController.present(viewController, animated: true, completion: nil)
    }
    
}
