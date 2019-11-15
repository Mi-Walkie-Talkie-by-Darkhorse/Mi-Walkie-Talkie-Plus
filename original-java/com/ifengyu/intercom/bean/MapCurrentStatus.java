package com.ifengyu.intercom.bean;

public class MapCurrentStatus {
    public double currentCenterLatitude;
    public double currentCenterLongitude;
    public int currentZoomLevel;

    public String toString() {
        return "MapCurrentStatus{currentCenterLatitude=" + this.currentCenterLatitude + ", currentCenterLongitude=" + this.currentCenterLongitude + ", currentZoomLevel=" + this.currentZoomLevel + '}';
    }
}
