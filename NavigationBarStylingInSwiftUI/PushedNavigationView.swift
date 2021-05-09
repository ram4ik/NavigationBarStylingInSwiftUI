//
//  PushedNavigationView.swift
//  NavigationBarStylingInSwiftUI
//
//  Created by Ramill Ibragimov on 09.05.2021.
//

import SwiftUI

struct PushedNavigationView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            Text("View Pushed on Navigation Stack!")
        }
        .navigationTitle("Pushed View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PushedNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        PushedNavigationView()
    }
}
