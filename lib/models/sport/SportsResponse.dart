
import 'Sport.dart';

class SportsResponse {
    List<Sport> sports;

    SportsResponse({this.sports});

    factory SportsResponse.fromJson(Map<String, dynamic> json) {
        return SportsResponse(
            sports: json['sports'] != null ? (json['sports'] as List).map((i) => Sport.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.sports != null) {
            data['sports'] = this.sports.map((v) => v.toJson()).toList();
        }
        return data;
    }
}