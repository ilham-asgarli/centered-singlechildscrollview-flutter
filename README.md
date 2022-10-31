<a href="https://pub.dev/packages/centered_singlechildscrollview">
  <img src="https://img.shields.io/pub/v/centered_singlechildscrollview?color=blue" />
</a>

# Center aligned SingleChildScrollView.

<p>The child is centered in the SingleChildScrollView. If the child is smaller than
SingleChildScrollView, it will be in the center. If it's large, it behaves like a normal
SingleChildScrollView. The child's place in the center can be changed. You can choose distribution
of children on scrollDirection by specifying mainAxisAlignment like Column.</p>

```dart
class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredSingleChildScrollView(
      child: CircularProgressIndicator(),
    );
  }
}
```

## Contributors

<a href="https://github.com/ilham-asgarli">
  <img src="https://contrib.rocks/image?repo=ilham-asgarli/centered_singlechildscrollview" />
</a>
