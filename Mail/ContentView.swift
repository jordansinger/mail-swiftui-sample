//
//  ContentView.swift
//  Mail
//
//  Created by Jordan Singer on 6/27/20.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Set<Int> = [0]
    var body: some View {
        NavigationView {
            
            List(selection: self.$selection) {
                NavigationLink(destination: Inbox()) {
                    Label("Inbox", systemImage: "tray")
                }
                .tag(0)
                Label("Sent", systemImage: "paperplane")
                Label("Trash", systemImage: "trash")
            }
            .listStyle(SidebarListStyle())
            .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)
            
            Text("Select an email")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Inbox: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MessageView()) {
                    VStack(alignment: .leading) {
                        Text("Jordan Singer").font(.headline)
                        Text("Hello, World!").font(.body)
                    }
                    .padding(.vertical, 8)
                }
                
                NavigationLink(destination: MessageView()) {
                    VStack(alignment: .leading) {
                        Text("Craig Federighi").font(.headline)
                        Text("lil apps + ").font(.body)
                    }
                    .padding(.vertical, 8)
                }
                
                NavigationLink(destination: MessageView()) {
                    VStack(alignment: .leading) {
                        Text("I build my ideas").font(.headline)
                        Text("I build my ideas #4 - 06/23/20").font(.body)
                    }
                    .padding(.vertical, 8)
                }
            }
            .listStyle(InsetListStyle())
            
            Text("Select an email")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationTitle("Inbox")
        .toolbar {
            
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "square.and.pencil")
                }
            }
            
            ToolbarItem(placement: .principal) {
                Button(action: {}) {
                    Image(systemName: "arrowshape.turn.up.left")
                }
            }
            
            ToolbarItem(placement: .principal) {
                Button(action: {}) {
                    Image(systemName: "trash")
                }
            }
            
        }
    }
}

struct MessageView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Here’s to the crazy ones, the misfits, the rebels, the troublemakers, the round pegs in the square holes… the ones who see things differently — they’re not fond of rules… You can quote them, disagree with them, glorify or vilify them, but the only thing you can’t do is ignore them because they change things… they push the human race forward, and while some may see them as the crazy ones, we see genius, because the ones who are crazy enough to think that they can change the world, are the ones who do.")
                Spacer()
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
