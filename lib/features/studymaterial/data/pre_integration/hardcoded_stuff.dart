import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/activity_card/activity_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/activity_status_enum.dart';

class HardCodedConstants {
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

  static const List<DepartmentCard> departmentCards = [
    DepartmentCard(
        title: "Electrical",
        subtitle: "Fundamentals of circuits and electronics",
        themeColor: Color(0xFF0D891B),
        pin: Pin.none),
    DepartmentCard(
        title: "Mechanical",
        subtitle: "Mechanics and design principles",
        themeColor: Color(0xFFCF4141),
        pin: Pin.none),
    DepartmentCard(
        title: "Mathematics",
        subtitle: "Algebra, calculus, and more",
        themeColor: Colors.deepPurple,
        pin: Pin.none),
    DepartmentCard(
        title: "Computer Science",
        subtitle: "Programming and algorithms",
        themeColor: Color(0xFF005792),
        pin: Pin.none),
    DepartmentCard(
        title: "Civil",
        subtitle: "Structural and construction engineering",
        themeColor: Color(0xFF8B4513),
        pin: Pin.none),
  ];

  static final List<CourseCard> courseCards = [
    CourseCard(
        semester: 1,
        title: "ABC-101",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "Fundamentals of circuits",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "DEF-202",
        subtitle: "Principles of structural design",
        pin: Pin.inactive,
        department: Department(
            title: "Civil",
            subtitle: "Building structures",
            themeColor: const Color(0xFF8B4513))),
    CourseCard(
        semester: 3,
        title: "GHI-303",
        subtitle: "Mathematical modeling and analysis",
        pin: Pin.inactive,
        department: Department(
            title: "Mathematics",
            subtitle: "Calculus and algebra",
            themeColor: Colors.deepPurple)),
    CourseCard(
        semester: 4,
        title: "JKL-404",
        subtitle: "Thermodynamics principles",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "Heat transfer and energy",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 5,
        title: "MNO-505",
        subtitle: "Quantum physics and mechanics",
        pin: Pin.inactive,
        department: Department(
            title: "Physics",
            subtitle: "Subatomic and quantum theory",
            themeColor: const Color(0xFF006400))),
    CourseCard(
        semester: 6,
        title: "PQR-606",
        subtitle: "Fluid mechanics and dynamics",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "Fluid behavior analysis",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 7,
        title: "STU-707",
        subtitle: "Data Science essentials",
        pin: Pin.inactive,
        department: Department(
            title: "Computer Science",
            subtitle: "Machine learning and data analysis",
            themeColor: const Color(0xFF005792))),
    CourseCard(
        semester: 8,
        title: "VWX-808",
        subtitle: "Advanced Structural Analysis",
        pin: Pin.inactive,
        department: Department(
            title: "Civil",
            subtitle: "Load distribution and materials",
            themeColor: const Color(0xFF8B4513))),
  ];

  static const List<FileTile> recentTiles = fileTiles;
  static const List<FileTile> bookmarkedTiles = fileTiles;
  static const List<FileTile> downloadedTiles = fileTiles;

  static final List<Activity> activities = [
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime(2023, 1, 1, 12, 0, 0),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
    ];
}
