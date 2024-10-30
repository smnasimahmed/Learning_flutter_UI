# Catalog App
Welcome to the Catalog App! This is a Flutter-based mobile application designed for users to explore and manage a simple catalog of items. The app features a user-friendly interface and utilizes a drawer for navigation, providing a seamless experience.


## Features
- **User Authentication:** Allows users to log in with a username and password.
- **Drawer Navigation:** A sliding drawer menu for easy navigation between different sections of the app, including home and profile options.
- **Responsive Design:** The app is designed to work well on various screen sizes and orientations.
- **Dynamic UI:** The login button animates during the login process, enhancing user experience.

## What I Learned
- **State Management:** I learned about managing state effectively using Stateful Widgets and how to implement user interactions seamlessly.
- **UI/UX Design:** I gained insights into designing user-friendly interfaces and how to enhance user experience through animations and responsive layouts.
- **Problem-Solving:** Working on this app improved my problem-solving skills as I encountered various challenges and bugs throughout development.
- **JSON Encoding and Decoding:** I learned how to encode and decode JSON files, which is essential for handling data in applications.

## Bugs to Fix
* App Restart for Updates: Currently, the app needs to be restarted to see updates after data changes.
* Close Button Issue: After performing a CRUD operation, pressing the close button is necessary; otherwise, the app may crash.
* Time Setting Issues: There are bugs related to setting and displaying time correctly.

## How to Install and Run Locally
### Prerequisites
* Java 17: Ensure it is installed. Download from [Oracle Archive](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html).
* Flutter SDK: [Get Flutter](https://docs.flutter.dev/get-started/install/windows).

### Steps
#### Clone the repository:
```
https://github.com/smnasimahmed/assignment_list.git
```

#### Install dependencies:
```
flutter pub get
```

#### Ensure Java 17 is the active version:
```
java -version
```
##### If necessary, set Java 17 manually:

* Linux/Mac:
```
export JAVA_HOME=/path-to-java-17
```
* Windows: Update the JAVA_HOME environment variable.
#### Run the app:
```
flutter run
```


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
