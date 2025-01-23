import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class HardCodedConstants {
  static const List<Color> courseCardColors = [
    Color(0xFF0D891B),
    Color(0xFFCF4141),
    Color(0xFF20284C)
  ];

  static const List<FileTile> fileTiles = [
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.tut,
      title: "This is a file tile",
    ),
  ];

  static const List<CourseCard> courseCards = [
    CourseCard(
      title: "Card1",
      subtitle: "This is the subtitle\nabab\nababa",
      themeColor: Color(0xFF0D891B),
      pin: Pin.none,
    ),
    CourseCard(
      title: "Card1",
      subtitle: "This is the",
      themeColor: Color(0xFFCF4141),
      pin: Pin.none,
    ),
    CourseCard(
      title: "Card1",
      subtitle: "This is the subtitle",
      themeColor: Colors.deepPurple,
      pin: Pin.none,
    ),
    CourseCard(
      title: "Architecture",
      subtitle: "Introduction to the electrical world",
      themeColor: Color(0xFF20284C),
      pin: Pin.none,
    ),
  ];

  static const List<FileTile> recentTiles = [
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    )
  ];

  static const List<FileTile> bookmarkedTiles = [
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    )
  ];

  static const List<FileTile> downloadedTiles = [
    FileTile(
      fileType: FileType.link,
      title: "ETEs Final Notes - Fluid Dynamics",
    ),
    FileTile(
      fileType: FileType.book,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.notes,
      title: "This is a file tile",
    ),
    FileTile(
      fileType: FileType.pyqs,
      title: "This is a file tile",
    )
  ];
}
