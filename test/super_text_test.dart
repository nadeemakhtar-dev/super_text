import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_text/super_text.dart';  // Your library import

void main() {
  // Ensure the widget renders correctly
  testWidgets('SuperText displays text with default styles', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Hello, World!'),
        ),
      ),
    );

    // Verify if the text widget contains the correct text
    expect(find.text('Hello, World!'), findsOneWidget);

    // Verify default font size and color
    final textWidget = tester.widget<Text>(find.text('Hello, World!'));
    expect(textWidget.style?.fontSize, 24); // Default fontSize should be 24
    expect(textWidget.style?.color, Colors.black); // Default color should be black
  });

  // Test for different text styles based on flags
  testWidgets('SuperText displays text with Heading style', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Heading Text', isHeading: true),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Heading Text'));
    expect(textWidget.style?.fontSize, 40); // Heading fontSize should be 40
    expect(textWidget.style?.fontWeight, FontWeight.bold); // Heading should be bold
  });

  testWidgets('SuperText displays text with Title style', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Title Text', isTitle: true),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Title Text'));
    expect(textWidget.style?.fontSize, 30); // Title fontSize should be 30
    expect(textWidget.style?.fontWeight, FontWeight.w600); // Title should have FontWeight.w600
  });

  testWidgets('SuperText displays text with Capitalized text', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'hello world', allCaps: true),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('HELLO WORLD'));
    expect(find.text('HELLO WORLD'), findsOneWidget); // Text should be in uppercase
  });

  testWidgets('SuperText displays text with SelectableText', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Selectable Text', isSelectable: true),
        ),
      ),
    );

    final selectableText = tester.widget<SelectableText>(find.text('Selectable Text'));
    expect(selectableText, isNotNull); // Verify if SelectableText widget is used
  });

  testWidgets('SuperText text is underlined', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Underlined Text', isUnderlined: true),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Underlined Text'));
    expect(textWidget.style?.decoration, TextDecoration.underline); // Check if text is underlined
  });

  testWidgets('SuperText displays correct text alignment', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(text: 'Aligned Text', textAlign: TextAlign.center),
        ),
      ),
    );

    final textWidget = tester.widget<Text>(find.text('Aligned Text'));
    expect(textWidget.textAlign, TextAlign.center); // Check text alignment
  });

  testWidgets('SuperText triggers onTap callback', (WidgetTester tester) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SuperText(
            text: 'Tap Me',
            onTap: () {
              tapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.text('Tap Me'));
    await tester.pump();

    expect(tapped, true); // onTap should be triggered
  });

  // You can add additional tests for other properties like `lineHeight`, `shadows`, `wordSpacing`, etc.
}
