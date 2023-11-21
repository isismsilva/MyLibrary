//
//  AddButton.swift
//  MyLibrary
//
//  Created by Isis Silva on 21/11/23.
//

import SwiftUI

struct AddButton: View {
  let action: (() -> Void)
  
  var body: some View {
    Button(action: action, label: {
      Image(systemName: "plus")
        .tint(.pink)
    })
  }
}

#Preview {
  AddButton(action: {})
}
