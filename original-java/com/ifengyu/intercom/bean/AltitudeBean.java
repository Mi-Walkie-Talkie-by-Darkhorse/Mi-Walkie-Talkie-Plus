package com.ifengyu.intercom.bean;

public class AltitudeBean {
    public double elevation;
    public Location location;
    public double resolution;

    class Location {
        public double lat;
        public double lng;

        Location() {
        }

        public String toString() {
            return "Location{lat=" + this.lat + ", lng=" + this.lng + '}';
        }
    }

    public String toString() {
        return "AltitudeBean{elevation=" + this.elevation + ", location=" + this.location + ", resolution=" + this.resolution + '}';
    }
}
