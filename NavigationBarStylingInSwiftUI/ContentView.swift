//
//  ContentView.swift
//  NavigationBarStylingInSwiftUI
//
//  Created by Ramill Ibragimov on 09.05.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showNavView: Bool = false
    @State private var showModalView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: PushedNavigationView(),
                    isActive: $showNavView
                ) {
                    Button(action: {
                        showNavView = true
                    }, label: {
                        Text("Show Second View")
                    })
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.label))
                    )
                    .foregroundColor(Color(.systemBackground))
                }.padding()
                Text("Hello World")
                    .padding()
            }
            .navigationTitle("Nav Bar Apperance")
            .navigationBarItems(trailing: Button(action: {
                showModalView = true
            }, label: {
                Image(systemName: "questionmark.circle.fill")
                    .font(.title2)
            }))
            .sheet(isPresented: $showModalView, content: {
                ModalSheetView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
