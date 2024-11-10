enum UserType {
  bossPharmacist, //개국약사
  workerPharmacist, //근무약사
  consultant, //컨설팅사
  privateOwner, //개인 건출주
  corporateOwner, //법인 건출주
}

extension UserTypeExtension on UserType {
  String get name {
    switch (this) {
      case UserType.bossPharmacist:
        return '개국약사';
      case UserType.workerPharmacist:
        return '근무약사';
      case UserType.consultant:
        return '컨설팅사';
      case UserType.privateOwner:
        return '개인 건출주';
      case UserType.corporateOwner:
        return '법인 건출주';
    }
  }
}
