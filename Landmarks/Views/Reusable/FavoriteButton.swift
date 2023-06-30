//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Руслан on 30.06.2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding
    var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    @State static var isSet = true
    static var previews: some View {
        FavoriteButton(isSet: $isSet)
    }
}
