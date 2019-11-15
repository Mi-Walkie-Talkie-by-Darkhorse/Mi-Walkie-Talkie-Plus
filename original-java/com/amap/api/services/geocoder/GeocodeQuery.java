package com.amap.api.services.geocoder;

public class GeocodeQuery {
    private String a;
    private String b;

    public GeocodeQuery(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public String getLocationName() {
        return this.a;
    }

    public void setLocationName(String str) {
        this.a = str;
    }

    public String getCity() {
        return this.b;
    }

    public void setCity(String str) {
        this.b = str;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b == null ? 0 : this.b.hashCode()) + 31) * 31;
        if (this.a != null) {
            i = this.a.hashCode();
        }
        return hashCode + i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        GeocodeQuery geocodeQuery = (GeocodeQuery) obj;
        if (this.b == null) {
            if (geocodeQuery.b != null) {
                return false;
            }
        } else if (!this.b.equals(geocodeQuery.b)) {
            return false;
        }
        if (this.a == null) {
            if (geocodeQuery.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(geocodeQuery.a)) {
            return false;
        } else {
            return true;
        }
    }
}
