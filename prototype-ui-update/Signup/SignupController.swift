//
//  SignupController.swift
//  prototype-ui-update
//
//  Created by Karen Rodriguez on 11/7/20.
//

import Foundation


/// This controller will handle all API logic for signing up the user once the signup process is finished.
/// Separating this logic makes it much easier to develop, troubleshoot and scale functionality by separating specific logic to specific files.
class SignupController {

    var entity: SignupEntity


    /// Initializing the signupController will require a new entity. This allows us to separate signup controllers based on the type of entity being added to the server.
    /// - Parameter entity: NewSeeker or NewEmployer
    init(entity: SignupEntity) {
        self.entity = entity
    }

    func registerEntity() {

        // If our entity isn't ready to be sent to the server, don't proceed.
        guard entity.isValid() else {
            // Error handling
            return
        }

        // Based on what kind of entity we're trying to register, we execute a different function.
        switch entity.type {

        case .seeker:
            registerSeeker()
            break

        case .employer:
            registerEmployer()
            break

        default:
            return
        }
    }

    private func registerSeeker() {

        // If we're executing this function and we can't cast entity as seeker, a mistake was made in function nesting.
        guard let seeker = self.entity as? NewSeeker else {
            // Error handle
            return
        }

        // Handle API signup functionality here.

        // Random usage of variable to silence warning.
        print(seeker.firstName!)

    }

    private func registerEmployer() {

        // If we're executing this function and we can't cast entity as employer, a mistake was made in function nesting.
        guard let seeker = self.entity as? NewEmployer else {
            // Error handle
            return
        }

        // Handle API signup functionality here.

        // Random usage of variable to silence warning.
        print(seeker.type)
    }
}

/**

 Placeholder classes for seekers, companies, employers, etc will allow us to avoid clutter and further separate functionality.

- Validation:
    - Each class will have will have private setters, which will handle validation of any given field that needs it.
    - This further declutters and helps centralize functionality.

- Validation Returns:
    True if setter was set successfully.
*/

class NewSeeker: SignupEntity {

    var type: EntityType = .seeker

    //  MARK: - Required fields
    private(set) var firstName: String?
    private(set) var lastName: String?
    private(set) var email: String?
    private(set) var location: String?

    //  MARK: - Optional fields
    private var jobID: String? {
        didSet {
            print("JobID was set. Handle cascading logic here.")
        }
    }
    private(set) var education: String?
    private(set) var lookingFor: String?
    private(set) var currentJob: String?
    private(set) var mySkills: [String]?

    //  MARK: - Protocol validation
    func isValid() -> Bool {
        // Check that all required fields are present.
        return true
    }

    // MARK: - Required fields validation
    func setFirstName(_ firstName: String) -> Bool {
        // Handle validation
        self.firstName = firstName
        return true
    }

    func setLastName(_ lastName: String) -> Bool {
        // Handle validation
        self.lastName = lastName
        return true
    }

    func setEmail(_ email: String) -> Bool {
        // Handle validation
        self.email = email
        return true
    }

    func setLocation(_ location: String) -> Bool {
        // Handle validation
        self.location = location
        return true
    }

    //  MARK: - Optional fields validation
    func setEducation(_ education: String) -> Bool {
        // Handle validation
        self.education = education
        return true
    }

    func setLookingFor(_ lookingFor: String) -> Bool {
        // Handle validation
        self.lookingFor = lookingFor
        return true
    }

    func setCurrentJob(_ currentJob: String) -> Bool {
        // Handle validation
        self.currentJob = currentJob
        return true
    }

    func setMySkills(_ mySkills: [String]) -> Bool {
        // Handle validation
        self.mySkills = mySkills
        return true
    }

}

/// Placeholder class for the sake of showing examples.
class NewEmployer: SignupEntity {

    var type: EntityType = .employer

    func isValid() -> Bool {
        return true
    }
}

/// The SignupController should only care about whether or not the company or user is valid to be sent to the server.
/// Once we're at the stage of sending a new user or company, then we cast the object to the right class.
protocol SignupEntity {
    var type: EntityType { get }

    /// Validate whether all required fields have been properly filled out.
    /// - Returns: True if entity can be sent to API
    func isValid() -> Bool
}

/// This Enum will let us quickly cast our class once we actually need to.
/// We want to avoid as many if statements as possible
enum EntityType {
    case seeker
    case employer
    case company
}
