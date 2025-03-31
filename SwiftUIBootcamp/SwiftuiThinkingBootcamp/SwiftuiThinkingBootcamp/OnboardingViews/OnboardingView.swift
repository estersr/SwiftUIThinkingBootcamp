//
//  OnboardingView.swift
//  SwiftuiThinkingBootcamp
//
//  Created by Esther Ramos on 19/03/25.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     when the value:
     0 -> welcome screen
     1 -> Add name
     2 -> Add age
     3 -> Add gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    //you cant add a binding var on the extension, it has so be here in the view
    
    
    //onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    //for the alert
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    
    //app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack {
            //content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.green)
       
                }
            }
            //buttons
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
        //    .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            
            Text("This is the best app for finding your match online! Tutotial to AppStorage and other SwiftUI Techniques")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {

            Text("Whats your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.horizontal)
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {

            Text("Whats your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
        }

        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {

            Text("Whats is your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
    
            Picker(selection: $gender, label:
                    Text(gender.count > 1 ? gender : "Select the gender")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                   , content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            })
            .pickerStyle(MenuPickerStyle())
            .background(Color.white).cornerRadius(20)
   
        }

        .padding(30)
    }
}

//MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your id needs 3 character minimun")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
