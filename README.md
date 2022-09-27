#Center aligned SingleChildScrollView.
The child is centered in the SingleChildScrollView. If the child is smaller than SingleChildScrollView, it will be in the center. If it's large, it behaves like a normal SingleChildScrollView. The child's place in the center can be changed. You can choose distribution of children on scrollDirection by specifying mainAxisAlignment like column.

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
