enum FileType { notes, tut, book, link, pyqs }

FileType fileTypeFromString(String value) {
  return FileType.values.firstWhere(
    (e) => e.toString().split('.').last == value,
    orElse: () => FileType.notes,
  );
}
// Have kept default value as notes. Need to be discussed
