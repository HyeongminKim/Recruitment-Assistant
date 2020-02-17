//
//  AppDelegate.swift
//  Recruitment Assistant
//
//  Created by HM on 2020/02/08.
//  Copyright © 2020 Hyeongmin Kim. License under the MIT License
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var settings = UserDB()


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView.environmentObject(settings))
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        exit(EXIT_SUCCESS)
    }
    
    @IBAction func showCopyright(_ sender: Any) {
        let copyright = URL(string: "https://github.com/HyeongminKim/Recruitment-Assistant/blob/master/LICENSE")
        NSWorkspace.shared.open(copyright!)
    }
    
    @IBAction func showHelp(_ sender: Any) {
        let copyright = URL(string: "https://github.com/HyeongminKim/Recruitment-Assistant/blob/master/README.md")
        NSWorkspace.shared.open(copyright!)
    }
}

