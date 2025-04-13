import 'package:file_picker/file_picker.dart';

Future<String?> filePicker() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if (result != null) {
    PlatformFile file = result.files.first;
    return file.path;
  } else {
    return null;
  }
}
