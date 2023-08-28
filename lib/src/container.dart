/// The instance of class [Container] manages your dependencies,
/// witch will be constructed or created during injecting.
class Container {
  final String? name;
  // Container? get _parent => _relationship[this];

  static final _relationship = Expando<Container>();

  Container({this.name});

  Container createChild(String? name) {
    Container child = Container(name: name);
    _relationship[child] = this;
    return child;
  }
}