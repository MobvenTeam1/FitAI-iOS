//
//  EmailTextField.swift
//  GrupProjeDeneme
//
//  Created by Ahmet Yasin Atakan on 31.05.2024.
//

import SwiftUI

struct FMPEmailTextField: View {
    @Binding var email: String
    var body: some View {
        TextField("", text: $email)
            .placeholder(when: email.isEmpty, placeholder: {
                Text("E-posta")
            })
            .autocapitalization(.none)
            .padding(.leading, 18)
            .frame(width: 327, height: 56)
            .background(Color.white247_248)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray232_232)
            )
            .padding(.top, 32)
    }
}
