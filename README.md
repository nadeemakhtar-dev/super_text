    # SuperText

    A customizable Flutter widget for rendering styled text with various options for customization, including different text styles, gradients, shadows, and more. It supports selectable text and tap gestures, making it ideal for various UI scenarios.

    ## Features

    - **Customizable Text Styles**: Control font size, weight, letter spacing, word spacing, and more.
    - **Multiple Text Roles**: Define text as a heading, title, small text, or caption with predefined styles.
    - **Text Transformations**: Options for making text uppercase or applying italic and underline styles.
    - **Text Gradient**: Apply a gradient effect to the text.
    - **Text Shadows**: Add custom shadows for the text.
    - **Selectable Text**: Make the text selectable for copying.
    - **Tap Gesture**: Handle tap gestures with an optional callback function.
    - **Overflow Handling**: Support for text overflow with ellipsis and multi-line handling.

    ## Installation

    To use `SuperText` in your Flutter project, add the following dependency in your `pubspec.yaml`:

    ```yaml
    dependencies:
    super_text: ^latest_version

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