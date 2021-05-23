import SwiftUI

class AppComponent {
    var accessibilityElementAdaptorTestingWindow: NSWindow!

    func setUp() {
        setUpWindowsState()
    }

    private func setUpWindowsState() {
        NSApplication.shared.hide(self)

        let contentView = ContentView()

        accessibilityElementAdaptorTestingWindow = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered,
            defer: false
        )
        accessibilityElementAdaptorTestingWindow.center()
        accessibilityElementAdaptorTestingWindow.contentView = NSHostingView(rootView: contentView)
        accessibilityElementAdaptorTestingWindow.makeKeyAndOrderFront(nil)
    }

}
