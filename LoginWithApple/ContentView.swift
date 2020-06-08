//
//  ContentView.swift
//  LoginWithApple
//
//  Created by denys on 05/02/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var signInWithAppleManager : SignInWithAppleManager
    
    var body: some View {
        ZStack{
            
            if signInWithAppleManager.isUserAuthenticated == .undefined{
                LoginView()
            } else if signInWithAppleManager.isUserAuthenticated == .signedIn{
                MainTabView()
            } else if signInWithAppleManager.isUserAuthenticated == .signedOut{
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
