//
//  ModalSheetView.swift
//  NavigationBarStylingInSwiftUI
//
//  Created by Ramill Ibragimov on 09.05.2021.
//

import SwiftUI

struct ModalSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Text("Modal Sheet View")
                .navigationTitle("Modal Sheet")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "x.circle.fill")
                        .font(.title2)
                }))
        }
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetView()
    }
}
