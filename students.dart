class Student {
  String studName;
  int rollNum;
  num eng;
  num sci;
  num math;

  Student(
      {required this.studName,
      required this.rollNum,
      required this.eng,
      required this.sci,
      required this.math});

  totMarks() {
    var total = eng + sci + math;
    print("total marks obtained = $total");
    return;
  }

  showStudInfo() {
    print("Name is ${studName}");
    print("Roll Number:${rollNum}");
    return;
  }
}

main() {
  var stud1 =
      Student(studName: "Deepa", rollNum: 01, eng: 78, sci: 89, math: 98);
  stud1.showStudInfo();
  stud1.totMarks();
}
