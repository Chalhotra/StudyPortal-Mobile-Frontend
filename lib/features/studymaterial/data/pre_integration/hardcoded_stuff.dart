import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/domain/entities/branch.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/branch_card/branch_card.dart';
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

  static const List<BranchCard> branchCards = [
    BranchCard(
        title: "Electrical",
        subtitle: "Fundamentals of circuits and electronics",
        id: 0,
        pin: Pin.none),
    BranchCard(
        title: "Mechanical",
        subtitle: "Mechanics and design principles",
        id: 1,
        pin: Pin.none),
    BranchCard(
        title: "Mathematics",
        subtitle: "Algebra, calculus, and more",
        id: 2,
        pin: Pin.none),
    BranchCard(
        title: "Computer Science",
        subtitle: "Programming and algorithms",
        id: 3,
        pin: Pin.none),
    BranchCard(
        title: "Civil",
        subtitle: "Structural and construction engineering",
        id: 4,
        pin: Pin.none),
  ];

  static final List<CourseCard> courseCards = [
    CourseCard(
        semester: 1,
        title: "ABC-101",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        branch: Branch(
            name: "Electrical", department: "Fundamentals of circuits", id: 0)),
    CourseCard(
        semester: 2,
        title: "DEF-202",
        subtitle: "Principles of structural design",
        pin: Pin.inactive,
        branch:
            Branch(name: "Civil", department: "Building structures", id: 1)),
    CourseCard(
        semester: 3,
        title: "GHI-303",
        subtitle: "Mathematical modeling and analysis",
        pin: Pin.inactive,
        branch: Branch(
            name: "Mathematics", department: "Calculus and algebra", id: 2)),
    CourseCard(
        semester: 4,
        title: "JKL-404",
        subtitle: "Thermodynamics principles",
        pin: Pin.inactive,
        branch: Branch(
            name: "Mechanical", department: "Heat transfer and energy", id: 3)),
    CourseCard(
        semester: 5,
        title: "MNO-505",
        subtitle: "Quantum physics and mechanics",
        pin: Pin.inactive,
        branch: Branch(
            name: "Physics",
            department: "Subatomic and quantum theory",
            id: 4)),
    CourseCard(
        semester: 6,
        title: "PQR-606",
        subtitle: "Fluid mechanics and dynamics",
        pin: Pin.inactive,
        branch: Branch(
            name: "Mechanical", department: "Fluid behavior analysis", id: 5)),
    CourseCard(
        semester: 7,
        title: "STU-707",
        subtitle: "Data Science essentials",
        pin: Pin.inactive,
        branch: Branch(
            name: "Computer Science",
            department: "Machine learning and data analysis",
            id: 6)),
    CourseCard(
        semester: 8,
        title: "VWX-808",
        subtitle: "Advanced Structural Analysis",
        pin: Pin.inactive,
        branch: Branch(
            name: "Civil",
            department: "Load distribution and materials",
            id: 7)),
  ];

  static const List<FileTile> recentTiles = fileTiles;
  static const List<FileTile> bookmarkedTiles = fileTiles;
  static const List<FileTile> downloadedTiles = fileTiles;
}
