class Sport {
    String idSport;
    String strFormat;
    String strSport;
    String strSportDescription;
    String strSportThumb;
    String strSportThumbGreen;

    Sport({this.idSport, this.strFormat, this.strSport, this.strSportDescription, this.strSportThumb, this.strSportThumbGreen});

    factory Sport.fromJson(Map<String, dynamic> json) {
        return Sport(
            idSport: json['idSport'], 
            strFormat: json['strFormat'], 
            strSport: json['strSport'], 
            strSportDescription: json['strSportDescription'], 
            strSportThumb: json['strSportThumb'], 
            strSportThumbGreen: json['strSportThumbGreen'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['idSport'] = this.idSport;
        data['strFormat'] = this.strFormat;
        data['strSport'] = this.strSport;
        data['strSportDescription'] = this.strSportDescription;
        data['strSportThumb'] = this.strSportThumb;
        data['strSportThumbGreen'] = this.strSportThumbGreen;
        return data;
    }
}