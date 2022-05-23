class ResultWrapper<TLeft, TRight> {
  late TLeft _leftType;
  late TRight _rightType;
  late bool _isLeftType;

  ResultWrapper._();

  ResultWrapper.left(TLeft type) : _isLeftType = true;
  ResultWrapper.right(TRight type) : _isLeftType = false;

  void result(Function(TLeft left) onLeft, Function(TRight right) onRight) =>
      _isLeftType ? onLeft(_leftType) : onRight(_rightType);

  bool get isLeft => _isLeftType;
  bool get isRight => _isLeftType != true;
}
