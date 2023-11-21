//
//  MyLibraryApp.swift
//  MyLibrary
//
//  Created by Isis Silva on 20/11/23.
//

import SwiftUI

@main
struct MyLibraryApp: App {
  @Environment(\.colorScheme) var systemColor
  var body: some Scene {
    WindowGroup {
      LibraryView()
        .environment(\.colorScheme, systemColor)
    }
  }
}
