//
//  LibraryView.swift
//  MyLibrary
//
//  Created by Isis Silva on 20/11/23.
//

import SwiftUI

struct LibraryView: View {
  @State private var isPresented: Bool = false
  @State private var bookList: [Book] = []
  @State private var alert: PresentableAlert?
  @State private var isOn: Bool = true
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .leading) {
        BooksCountView(count: bookList.count)
        List(bookList, id: \.title) { book in
          Section {
            BookView(book: book)
          }
        }
      }
      .navigationTitle("Library")
      .toolbar {
        ToolbarItem {
          AddButton { addBook() }
        }
      }
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Toggle("", isOn: $isOn).toggleStyle(.switch)
        }
      }
    }
    .sheet(isPresented: $isPresented) {
      AddBookView(bookList: $bookList)
        .presentationDetents([.medium])
        .onPreferenceChange(AlertPreferenceKey.self) { self.alert = $0 }
        .alert(item: $alert) { alert in
          Alert(
            title: Text(alert.title),
            message: Text(alert.message ?? ""),
            dismissButton: .cancel(Text("Thanks!"), action: alert.action)
          )
        }
    }
    .environment(\.colorScheme, isOn ? .light : .dark)
  }
  
  private func addBook() {
    isPresented = true
  }
}

#Preview {
  LibraryView()
}
