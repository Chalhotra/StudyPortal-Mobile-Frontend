import 'package:flutter/material.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/activity_card/activity_card.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/activity_status_enum.dart';
import 'package:studyportal/features/studymaterial/presentation/widgets/tools/file_type_enum.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<Activity> activities = [
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
      Activity(
          title: "HC Verma Physics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.notes),
      Activity(
          title: "Yes",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.tut),
      Activity(
          title: "Sample test title",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.rejected,
          message: "message",
          fileType: FileType.book),
      Activity(
          title: "Mathematics",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.approved,
          message: "message",
          fileType: FileType.link),
      Activity(
          title: "Short",
          courseCode: "CSN-001",
          date: DateTime.now(),
          status: ActivityStatus.pending,
          message: "message",
          fileType: FileType.pyqs),
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Activity",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  for (int index = 0; index < activities.length; index++)
                    Column(
                      children: [
                        ActivityCard(activity: activities[index]),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                ])),
      ),
    );
  }
}
