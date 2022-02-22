# STREAMDInterfaceKit

STREAMDInterfaceKit is a Swift package that contains standard views, styles, and fonts for the STREAMD app.

**Make sure not to have your Mac selected as the runnable device otherwise you'll get weird Mac errors**

## How to Install

1. In an Xcode project, click File -> Add Packages...
2. Copy and paste `https://github.com/STREAMDanime/STREAMDInterfaceKit` into the search bar.
3. Add the package from the list.

## Included Fonts

STREAMDInterfaceKit includes the following stanard font styles with the respective fonts.

| Standard Font    | Font Used  | Font Style | Font Size |
| ---------------- | ---------  | ---------- | --------- |
| `.title`         | Poppins    | Bold       | 35        |
| `.subtitle`      | NunitoSans | SemiBold   | 15        |
| `.heading1`      | Poppins    | Bold       | 24        |
| `.heading2`      | Poppins    | Bold       | 20        |
| `.heading3`      | Poppins    | Bold       | 18        |
| `.body    `      | NunitoSans | Bold       | 14        |
| `.sectionHeader` | Poppins    | Bold       | 13        |
| `.buttonTitle`   | Poppins    | SemiBold   | 14        |

## Using Included Fonts
STREAMDInterfaceKit includes a number of standard font style, some of which use custom fonts included in the package. In order to use these custom fonts, you need to do the following:

### If using AppDelegate
In the "didFinishLaunchWithOptions" delegate method, call `STREAMDInterfaceKit.registerFonts()` before returning.

### If using SwiftUI's App structure
Inside the App's `init()`, call `STREAMDInterfaceKit.registerFonts()`. If there is not an `init()` function, create one.
