import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';

class HardCodedConstants {
  static const List<Color> courseCardColors = [
    Color(0xFF0D891B),
    Color(0xFFCF4141),
    Color(0xFF20284C)
  ];

  static const List<FileTile> fileTiles = [
    FileTile(
        fileType: FileType.link,
        courseCode: "ABC-101",
        title: "Introduction to Electrical Circuits"),
    FileTile(
        fileType: FileType.book,
        courseCode: "DEF-202",
        title: "Advanced Structural Design"),
    FileTile(
        fileType: FileType.notes,
        courseCode: "GHI-303",
        title: "Mathematical Methods for Engineers"),
    FileTile(
        fileType: FileType.pyqs,
        courseCode: "JKL-404",
        title: "Past Year Papers - Thermodynamics"),
    FileTile(
        fileType: FileType.tut,
        courseCode: "MNO-505",
        title: "Tutorials on Quantum Mechanics"),
    FileTile(
        fileType: FileType.notes,
        courseCode: "PQR-606",
        title: "Lecture Notes on Fluid Mechanics"),
    FileTile(
        fileType: FileType.book,
        courseCode: "STU-707",
        title: "Essential Readings on Data Science"),
    FileTile(
        fileType: FileType.pyqs,
        courseCode: "VWX-808",
        title: "Previous Exams on Structural Analysis"),
  ];
  static const List<FileTile> recentTiles = fileTiles;
  static const List<FileTile> bookmarkedTiles = fileTiles;
  static const List<FileTile> downloadedTiles = fileTiles;
}
