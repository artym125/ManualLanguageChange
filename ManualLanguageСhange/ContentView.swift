//
//  ContentView.swift
//  ManualLanguageСhange
//
//  Created by Ostap Artym on 08.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("language")
    private var language = LocalizationService.shared.language
    //Додаємо значення через @AppStorage
    
    var title: String = "MainPageTitle"
    //"MainPageTitle" - ключ з локалізації
    
    var body: some View {
        VStack(spacing: 15) {
            
            Text(title.localized(language))
            
            //.localized(language) - добавляємо для String
            
            Button {
                LocalizationService.shared.language = .ukrainian
            } label: {
                Text("Українська")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.50), in: RoundedRectangle(cornerRadius: 15))
            }
            Button {
                LocalizationService.shared.language = .english_us
            } label: {
                Text("English")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.50), in: RoundedRectangle(cornerRadius: 15))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
