import 'dart:io';

String readJsonHelper(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }

  return File('$dir/test/$name').readAsStringSync();
}
