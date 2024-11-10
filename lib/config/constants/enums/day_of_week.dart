enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

extension DayOfWeekExtension on DayOfWeek {
  String get name {
    switch (this) {
      case DayOfWeek.monday:
        return '월';
      case DayOfWeek.tuesday:
        return '화';
      case DayOfWeek.wednesday:
        return '수';
      case DayOfWeek.thursday:
        return '목';
      case DayOfWeek.friday:
        return '금';
      case DayOfWeek.saturday:
        return '토';
      case DayOfWeek.sunday:
        return '일';
    }
  }

  String get fullName {
    switch (this) {
      case DayOfWeek.monday:
        return '월요일';
      case DayOfWeek.tuesday:
        return '화요일';
      case DayOfWeek.wednesday:
        return '수요일';
      case DayOfWeek.thursday:
        return '목요일';
      case DayOfWeek.friday:
        return '금요일';
      case DayOfWeek.saturday:
        return '토요일';
      case DayOfWeek.sunday:
        return '일요일';
    }
  }

  String get code {
    switch (this) {
      case DayOfWeek.monday:
        return 'mon';
      case DayOfWeek.tuesday:
        return 'tue';
      case DayOfWeek.wednesday:
        return 'wed';
      case DayOfWeek.thursday:
        return 'thu';
      case DayOfWeek.friday:
        return 'fri';
      case DayOfWeek.saturday:
        return 'sat';
      case DayOfWeek.sunday:
        return 'sun';
    }
  }
}
