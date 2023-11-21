//
//  Alert+PrefenreceKey.swift
//  MyLibrary
//
//  Created by Isis Silva on 21/11/23.
//

import SwiftUI

struct AlertPreferenceKey: PreferenceKey {
  static var defaultValue: PresentableAlert?
  
  static func reduce(value: inout PresentableAlert?, nextValue: () -> PresentableAlert?) {
    value = nextValue()
  }
}

struct PresentableAlert: Equatable, Identifiable {
  let id = UUID()
  let title: String
  let message: String?
  let action: (() -> Void)?
  
  static func == (lhs: PresentableAlert, rhs: PresentableAlert) -> Bool {
    lhs.id == rhs.id
  }
}
