package com.amap.api.mapcore.util;

import com.amap.api.services.district.DistrictSearchQuery;

/* compiled from: StyleType */
public enum dh {
    TYPE_LAND("land", 0),
    TYPE_GREEN("green", 1),
    TYPE_EDU("edu", 2),
    TYPE_PUBLIC("public", 3),
    TYPE_TRAFFIC("traffic", 4),
    TYPE_SCENICSPOT("scenicSpot", 5),
    TYPE_CULTURE("culture", 6),
    TYPE_HEALTH("health", 7),
    TYPE_SPORTS("sports", 8),
    TYPE_BUSINESS("business", 9),
    TYPE_PARKINGLOT("parkingLot", 10),
    TYPE_SUBWAY("subway", 11),
    TYPE_WATER("water", 12),
    TYPE_BUILDINGS("buildings", 13),
    TYPE_HIGHWAY("highWay", 14),
    TYPE_RINGROAD("ringRoad", 15),
    TYPE_NATIONALROAD("nationalRoad", 16),
    TYPE_PROVINCIALROAD("provincialRoad", 17),
    TYPE_SECONDARYROAD("secondaryRoad", 18),
    TYPE_LEVELTHIRDROAD("levelThreeRoad", 19),
    TYPE_LEVELFOURROAD("levelFourRoad", 20),
    TYPE_ROADSBEINGBUILT("roadsBeingBuilt", 21),
    TYPE_RAILWAY("railway", 22),
    TYPE_HIGHSPEEDRAILWAY("highSpeedRailway", 23),
    TYPE_SUBWAYLINE("subwayline", 24),
    TYPE_SUBWAYBEBUILT("subwayBeingBuilt", 25),
    TYPE_OVERPASS("overPass", 26),
    TYPE_UNDERPASS("underPass", 27),
    TYPE_OTHERROAD("other", 28),
    TYPE_GUIDEBOARDS("guideBoards", 29),
    TYPE_POIS("pois", 30),
    TYPE_AOIS("aois", 31),
    TYPE_CONTINENT("continent", 32),
    TYPE_COUNTRY(DistrictSearchQuery.KEYWORDS_COUNTRY, 33),
    TYPE_PROVINCE(DistrictSearchQuery.KEYWORDS_PROVINCE, 34),
    TYPE_CITY(DistrictSearchQuery.KEYWORDS_CITY, 35),
    TYPE_DISTRICT(DistrictSearchQuery.KEYWORDS_DISTRICT, 36),
    TYPE_TOWN("town", 37),
    TYPE_VILLAGE("village", 38),
    TYPE_CHINA("China", 39),
    TYPE_FOREIGN("foreign", 40),
    TYPE_PROVINCIAL("provincial", 41);
    
    private String Q;
    private int R;

    private dh(String str, int i) {
        this.Q = str;
        this.R = i;
    }

    public String a() {
        return this.Q;
    }

    public static int a(String str) {
        dh[] values;
        for (dh dhVar : values()) {
            if (dhVar.a().equals(str)) {
                return dhVar.R;
            }
        }
        return -1;
    }
}
