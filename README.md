Center aligned SingleChildScrollView.
<br>

```dart
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredChildScrollView(
      child: CircularProgressIndicator(),
    );
  }
}
```
