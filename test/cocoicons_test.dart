import 'package:cocoicons/cocoicons.dart';
import 'package:cocoicons/src/cocoicons_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test that line icons are generated', () {
    String lineFamily = 'cocoline';
    CocoIconsData icon = CocoIconsData(0xe900, lineFamily);
    expect(icon.codePoint, 0xe900);
  });

  test('Test that bold icons are generated', () {
    String boldFamily = 'cocobold';
    CocoIconsData icon = CocoIconsData(0xe900, boldFamily);
    expect(icon.codePoint, 0xe900);
  });

  test('Test line icon', () {
    expect(CocoIconLine.Add.codePoint, 0xe900);
  });

  test('Test line icon family', () {
    String lineFamily = 'cocoline';
    expect(CocoIconLine.Add.fontFamily, lineFamily);
  });

  test('Test icon package name', () {
    expect(CocoIconLine.Add.fontPackage, 'cocoicons');
  });
}
