# Custom Text Library for Flutter

A unique and flexible custom text library for Flutter that allows developers to effortlessly create, style, and manage text with ease. This library aims to provide an enhanced approach to text styling, combining dynamic text formatting, responsive text scaling, and customizable themes into a single package.

## Features
- **Custom Text Styles**: Easily apply various text styles, including fonts, colors, shadows, and custom decorations.
- **Responsive Design**: Adjusts text size dynamically based on screen size, ensuring optimal readability across all devices.
- **Advanced Text Features**: Supports rich text formatting, such as text highlighting, multiple font variations, and inline images.
- **Theme Integration**: Seamlessly integrates with Flutter's theme system for consistent, app-wide text styling.
- **Performance Optimized**: Lightweight, ensuring minimal impact on your app's performance even with large amounts of text.

## Installation

To add this library to your Flutter project, include it in your `pubspec.yaml` file:

```yaml
dependencies:
  custom_text_lib: ^1.0.0



    ### Basic Example

    ```dart
    SuperText(
    text: 'Hello, Flutter!',
    isHeading: true,
    color: Colors.blue,
    fontSize: 32,
    textAlign: TextAlign.center,
    )

    ### Advanced Example with Gradient and Shadows

    ```dart
    SuperText(
    text: 'Custom Styled Text',
    isTitle: true,
    color: Colors.black,
    textGradient: LinearGradient(
        colors: [Colors.blue, Colors.purple],
    ),
    shadows: [
        Shadow(
        offset: Offset(2.0, 2.0),
        color: Colors.grey.withOpacity(0.5),
        blurRadius: 3.0,
        ),
    ],
    fontSize: 28,
    onTap: () {
        print('Text tapped!');
    },
    )
    ### Selectable Text

    ```dart
    SuperText(
    text: 'This is selectable text.',
    isSelectable: true,
    textAlign: TextAlign.left,
    )
