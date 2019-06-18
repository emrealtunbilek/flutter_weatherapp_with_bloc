// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);
import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  List<ConsolidatedWeather> consolidatedWeather;
  DateTime time;
  DateTime sunRise;
  DateTime sunSet;
  String timezoneName;
  Parent parent;
  List<dynamic> sources;
  String title;
  String locationType;
  int woeid;
  String lattLong;
  String timezone;

  Weather({
    this.consolidatedWeather,
    this.time,
    this.sunRise,
    this.sunSet,
    this.timezoneName,
    this.parent,
    this.sources,
    this.title,
    this.locationType,
    this.woeid,
    this.lattLong,
    this.timezone,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => new Weather(
        consolidatedWeather: json["consolidated_weather"] == null
            ? null
            : new List<ConsolidatedWeather>.from(json["consolidated_weather"]
                .map((x) => ConsolidatedWeather.fromJson(x))),
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        sunRise:
            json["sun_rise"] == null ? null : DateTime.parse(json["sun_rise"]),
        sunSet:
            json["sun_set"] == null ? null : DateTime.parse(json["sun_set"]),
        timezoneName:
            json["timezone_name"] == null ? null : json["timezone_name"],
        parent: json["parent"] == null ? null : Parent.fromJson(json["parent"]),
        sources: json["sources"] == null
            ? null
            : new List<dynamic>.from(json["sources"].map((x) => x)),
        title: json["title"] == null ? null : json["title"],
        locationType:
            json["location_type"] == null ? null : json["location_type"],
        woeid: json["woeid"] == null ? null : json["woeid"],
        lattLong: json["latt_long"] == null ? null : json["latt_long"],
        timezone: json["timezone"] == null ? null : json["timezone"],
      );

  Map<String, dynamic> toJson() => {
        "consolidated_weather": consolidatedWeather == null
            ? null
            : new List<dynamic>.from(
                consolidatedWeather.map((x) => x.toJson())),
        "time": time == null ? null : time.toIso8601String(),
        "sun_rise": sunRise == null ? null : sunRise.toIso8601String(),
        "sun_set": sunSet == null ? null : sunSet.toIso8601String(),
        "timezone_name": timezoneName == null ? null : timezoneName,
        "parent": parent == null ? null : parent.toJson(),
        "sources": sources == null
            ? null
            : new List<dynamic>.from(sources.map((x) => x)),
        "title": title == null ? null : title,
        "location_type": locationType == null ? null : locationType,
        "woeid": woeid == null ? null : woeid,
        "latt_long": lattLong == null ? null : lattLong,
        "timezone": timezone == null ? null : timezone,
      };
}

class ConsolidatedWeather {
  int id;
  String weatherStateName;
  String weatherStateAbbr;
  String windDirectionCompass;
  DateTime created;
  DateTime applicableDate;
  double minTemp;
  double maxTemp;
  double theTemp;
  double windSpeed;
  double windDirection;
  double airPressure;
  int humidity;
  double visibility;
  int predictability;

  ConsolidatedWeather({
    this.id,
    this.weatherStateName,
    this.weatherStateAbbr,
    this.windDirectionCompass,
    this.created,
    this.applicableDate,
    this.minTemp,
    this.maxTemp,
    this.theTemp,
    this.windSpeed,
    this.windDirection,
    this.airPressure,
    this.humidity,
    this.visibility,
    this.predictability,
  });

  factory ConsolidatedWeather.fromJson(Map<String, dynamic> json) =>
      new ConsolidatedWeather(
        id: json["id"] == null ? null : json["id"],
        weatherStateName: json["weather_state_name"] == null
            ? null
            : json["weather_state_name"],
        weatherStateAbbr: json["weather_state_abbr"] == null
            ? null
            : json["weather_state_abbr"],
        windDirectionCompass: json["wind_direction_compass"] == null
            ? null
            : json["wind_direction_compass"],
        created:
            json["created"] == null ? null : DateTime.parse(json["created"]),
        applicableDate: json["applicable_date"] == null
            ? null
            : DateTime.parse(json["applicable_date"]),
        minTemp: json["min_temp"] == null ? null : json["min_temp"].toDouble(),
        maxTemp: json["max_temp"] == null ? null : json["max_temp"].toDouble(),
        theTemp: json["the_temp"] == null ? null : json["the_temp"].toDouble(),
        windSpeed:
            json["wind_speed"] == null ? null : json["wind_speed"].toDouble(),
        windDirection: json["wind_direction"] == null
            ? null
            : json["wind_direction"].toDouble(),
        airPressure: json["air_pressure"] == null
            ? null
            : json["air_pressure"].toDouble(),
        humidity: json["humidity"] == null ? null : json["humidity"],
        visibility:
            json["visibility"] == null ? null : json["visibility"].toDouble(),
        predictability:
            json["predictability"] == null ? null : json["predictability"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "weather_state_name":
            weatherStateName == null ? null : weatherStateName,
        "weather_state_abbr":
            weatherStateAbbr == null ? null : weatherStateAbbr,
        "wind_direction_compass":
            windDirectionCompass == null ? null : windDirectionCompass,
        "created": created == null ? null : created.toIso8601String(),
        "applicable_date": applicableDate == null
            ? null
            : "${applicableDate.year.toString().padLeft(4, '0')}-${applicableDate.month.toString().padLeft(2, '0')}-${applicableDate.day.toString().padLeft(2, '0')}",
        "min_temp": minTemp == null ? null : minTemp,
        "max_temp": maxTemp == null ? null : maxTemp,
        "the_temp": theTemp == null ? null : theTemp,
        "wind_speed": windSpeed == null ? null : windSpeed,
        "wind_direction": windDirection == null ? null : windDirection,
        "air_pressure": airPressure == null ? null : airPressure,
        "humidity": humidity == null ? null : humidity,
        "visibility": visibility == null ? null : visibility,
        "predictability": predictability == null ? null : predictability,
      };
}

class Parent {
  Parent();

  factory Parent.fromJson(Map<String, dynamic> json) => new Parent();

  Map<String, dynamic> toJson() => {};
}
