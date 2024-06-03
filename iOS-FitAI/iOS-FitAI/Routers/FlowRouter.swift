//
//  FlowRouter.swift
//  iOS-FitAI
//
//  Created by Elif Tum on 23.05.2024.
//

import Foundation
import SwiftUI
import UIKit

public enum FlowRouter: NavigationRouter {

    case splash
    case onboarding
    case personalInfos
    case login
    case profile
    case handleScreens
    
    public var transition: NavigationTransitionStyle {
        switch self {
        default:
            return .push
        }
    }
    
    @ViewBuilder
    public func view() -> some View {
        switch self {
        case .splash:
            SplashView()
        case .onboarding:
            OnboardingView()
        case .personalInfos:
            PersonalInfosView()
        case .login:
            LoginView()
        case .profile:
            ProfileView()
        case .handleScreens:
            HandleScreens()
        default:
            Text(verbatim: "There is nothing")
                .foregroundStyle(.blue)
        }
    }
}
