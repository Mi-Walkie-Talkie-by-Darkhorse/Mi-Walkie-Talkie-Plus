package com.ifengyu.intercom.bean;

/* loaded from: classes.dex */
public class AltitudeBean {
    public double elevation;
    public Location location;
    public double resolution;

    /* loaded from: classes.dex */
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
