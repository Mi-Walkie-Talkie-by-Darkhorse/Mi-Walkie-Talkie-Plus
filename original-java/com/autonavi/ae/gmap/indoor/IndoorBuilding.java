package com.autonavi.ae.gmap.indoor;

public class IndoorBuilding {
    public int activeFloorIndex;
    public String activeFloorName;
    public int[] floor_indexs;
    public String[] floor_names;
    public String[] floor_nonas;
    public String mIndoorBuildType;
    public String name_cn;
    public String name_en;
    public int numberofFloor;
    public int numberofParkFloor;
    public int[] park_floor_indexs;
    public String poiid;

    public interface IndoorBuildingListener {
        void indoorBuildingActivity(int i, IndoorBuilding indoorBuilding);
    }
}
