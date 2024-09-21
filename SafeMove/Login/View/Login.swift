//
//  Login.swift
//  SafeMove
//
//  Created by Rachna on 21/09/24.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(.blue.gradient)
                    .frame(width: 100)
                
                VStack(spacing: 20) {
                    Image(.taxi)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(40)
                    
                    Text("SafeMove")
                        .font(.headline)
                        .tint(.white)
                }
                .padding()
            }
        }
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    Login()
}

