import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/domain/entities/department.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/course_card/course_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/department_card/department_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/file_tiles/file_tile.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/pin_enum.dart';

class HardCodedConstants {
  static const List<FileTile> fileTiles = [
    FileTile(
        fileType: FileType.link,
        courseCode: "Circuit Analysis",
        title: "ETEs Final Notes - Fluid Dynamics"),
    FileTile(
        fileType: FileType.book,
        courseCode: "Structural Design",
        title: "This is a file tile"),
    FileTile(
        fileType: FileType.notes,
        courseCode: "Structural Design",
        title: "This is a file tile"),
    FileTile(
        fileType: FileType.pyqs,
        courseCode: "Circuit Analysis",
        title: "This is a file tile"),
    FileTile(
        fileType: FileType.tut,
        courseCode: "Circuit Analysis",
        title: "This is a file tile"),
  ];

  static const List<DepartmentCard> departmentCards = [
    DepartmentCard(
        title: "Electrical",
        subtitle: "This is the subtitle",
        themeColor: Color(0xFF0D891B),
        pin: Pin.none),
    DepartmentCard(
        title: "Electrical",
        subtitle: "This is the subtitle",
        themeColor: Color(0xFF0D891B),
        pin: Pin.none),
    DepartmentCard(
        title: "Mechanical",
        subtitle: "This is the",
        themeColor: Color(0xFFCF4141),
        pin: Pin.none),
    DepartmentCard(
        title: "Mathematics",
        subtitle: "This is the subtitle",
        themeColor: Colors.deepPurple,
        pin: Pin.none),
    DepartmentCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none),
    DepartmentCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none),
    DepartmentCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none),
    DepartmentCard(
        title: "Architecture",
        subtitle: "Introduction to the electrical world",
        themeColor: Color(0xFF20284C),
        pin: Pin.none)
  ];

  static final List<CourseCard> courseCards = [
    CourseCard(
        semester: 1,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Circuit Analysis",
        subtitle: "Basic electrical circuits",
        pin: Pin.inactive,
        department: Department(
            title: "Electrical",
            subtitle: "This is the subtitle",
            themeColor: const Color(0xFF0D891B))),
    CourseCard(
        semester: 2,
        title: "Thermodynamics",
        subtitle: "Fundamentals of heat transfer",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "This is the",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 2,
        title: "Thermodynamics",
        subtitle: "Fundamentals of heat transfer",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "This is the",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 2,
        title: "Thermodynamics",
        subtitle: "Fundamentals of heat transfer",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "This is the",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 2,
        title: "Thermodynamics",
        subtitle: "Fundamentals of heat transfer",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "This is the",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 2,
        title: "Thermodynamics",
        subtitle: "Fundamentals of heat transfer",
        pin: Pin.inactive,
        department: Department(
            title: "Mechanical",
            subtitle: "This is the",
            themeColor: const Color(0xFFCF4141))),
    CourseCard(
        semester: 3,
        title: "Linear Algebra",
        subtitle: "Vectors and Matrices",
        pin: Pin.inactive,
        department: Department(
            title: "Mathematics",
            subtitle: "This is the subtitle",
            themeColor: Colors.deepPurple)),
    CourseCard(
        semester: 4,
        title: "Structural Design",
        subtitle: "Principles of architecture",
        pin: Pin.inactive,
        department: Department(
            title: "Architecture",
            subtitle: "Introduction to the electrical world",
            themeColor: const Color(0xFF20284C))),
  ];

  static const List<FileTile> recentTiles = fileTiles;
  static const List<FileTile> bookmarkedTiles = fileTiles;
  static const List<FileTile> downloadedTiles = fileTiles;
}
