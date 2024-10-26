// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Taskss {
  
  String titles;
  String datas;
  String times;
  bool status;
  Taskss({
    
    required this.titles,
    required this.datas,
    required this.times,
    required this.status,
  });

  Taskss copyWith({
    int? id,
    String? titles,
    String? datas,
    String? times,
    bool? status,
  }) {
    return Taskss(
      
      titles: titles ?? this.titles,
      datas: datas ?? this.datas,
      times: times ?? this.times,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      
      'titles': titles,
      'datas': datas,
      'times': times,
      'status': status,
    };
  }

  factory Taskss.fromMap(Map<String, dynamic> map) {
    return Taskss(
      
      titles: map['titles'] as String,
      datas: map['datas'] as String,
      times: map['times'] as String,
      status: map['status'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Taskss.fromJson(String source) => Taskss.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Taskss(titles: $titles, datas: $datas, times: $times, status: $status)';
  }

  @override
  bool operator ==(covariant Taskss other) {
    if (identical(this, other)) return true;
  
    return 
      
      other.titles == titles &&
      other.datas == datas &&
      other.times == times &&
      other.status == status;
  }

  @override
  int get hashCode {
    return 
      titles.hashCode ^
      datas.hashCode ^
      times.hashCode ^
      status.hashCode;
  }
}
