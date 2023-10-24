import 'dart:convert';
import 'dart:io' show File;

extension Base64Extensions on File {
  Future<String> getBase64Image() async {
    var base64 = '';
    var bytes = await readAsBytes();
    base64 = base64Encode(bytes);

    return base64;
  }
}

extension Base64ExtensionsList on List<File> {
  Future<List<String>> getBase64ImageList() async {
    List<String> base64List = [];
    for (var i = 0; i < length; i++) {
      var base64 = await this[i].getBase64Image();
      base64List.add(base64);
    }

    return base64List;
  }
}
