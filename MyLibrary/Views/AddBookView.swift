//
//  AddBookView.swift
//  MyLibrary
//
//  Created by Isis Silva on 21/11/23.
//

import SwiftUI

struct AddBookView: View {
  @State private var alert: PresentableAlert?
  @State private var title: String = ""
  @State private var image: String = ""
  @State private var author: String = ""
  @Binding var bookList: [Book]
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack(spacing: 24) {
      Text("New book")
        .font(.system(.largeTitle, weight: .bold))
        .frame(maxWidth: .infinity, alignment: .leading)
      
      TextField("title", text: $title)
        .textFieldStyle(.roundedBorder)
      TextField("image", text: $image)
        .textFieldStyle(.roundedBorder)
      TextField("author", text: $author)
        .textFieldStyle(.roundedBorder)
      
      Button(action: { saveBook() }, label: {
        Text("Save")
      })
      .preference(key: AlertPreferenceKey.self, value: alert)
      .padding(.horizontal, 48)
      .padding(.vertical, 12)
      .font(.system(.title2, weight: .bold))
      .background(Color.pink)
      .foregroundStyle(Color.white)
      .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    .padding()
  }
  
  private func saveBook() {
    bookList.append(
      Book(
        title: title,
        author: author,
        image: image)
    )
    self.alert = PresentableAlert(
      title: "Title",
      message: "Message"
    ) {
      dismiss.callAsFunction()
    }
  }
}

#Preview {
  AddBookView(bookList: .constant([]))
}
