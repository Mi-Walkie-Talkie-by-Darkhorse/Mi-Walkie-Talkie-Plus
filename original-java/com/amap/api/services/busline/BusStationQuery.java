package com.amap.api.services.busline;

import com.amap.api.col.sl.t;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class BusStationQuery implements Cloneable {
    private String a;
    private String b;
    private int c = 20;
    private int d = 1;

    public BusStationQuery(String str, String str2) {
        boolean z = true;
        this.a = str;
        this.b = str2;
        if (t.a(this.a)) {
            z = false;
        }
        if (!z) {
            ThrowableExtension.printStackTrace(new IllegalArgumentException("Empty query"));
        }
    }

    public String getQueryString() {
        return this.a;
    }

    public String getCity() {
        return this.b;
    }

    public int getPageSize() {
        return this.c;
    }

    public int getPageNumber() {
        return this.d;
    }

    public void setQueryString(String str) {
        this.a = str;
    }

    public void setCity(String str) {
        this.b = str;
    }

    public void setPageSize(int i) {
        this.c = i;
    }

    public void setPageNumber(int i) {
        if (i <= 0) {
            i = 1;
        }
        this.d = i;
    }

    public BusStationQuery clone() {
        BusStationQuery busStationQuery = new BusStationQuery(this.a, this.b);
        busStationQuery.setPageNumber(this.d);
        busStationQuery.setPageSize(this.c);
        return busStationQuery;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((((this.b == null ? 0 : this.b.hashCode()) + 31) * 31) + this.d) * 31) + this.c) * 31;
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
        BusStationQuery busStationQuery = (BusStationQuery) obj;
        if (this.b == null) {
            if (busStationQuery.b != null) {
                return false;
            }
        } else if (!this.b.equals(busStationQuery.b)) {
            return false;
        }
        if (this.d != busStationQuery.d) {
            return false;
        }
        if (this.c != busStationQuery.c) {
            return false;
        }
        if (this.a == null) {
            if (busStationQuery.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(busStationQuery.a)) {
            return false;
        } else {
            return true;
        }
    }

    public boolean weakEquals(BusStationQuery busStationQuery) {
        if (this == busStationQuery) {
            return true;
        }
        if (busStationQuery == null) {
            return false;
        }
        if (this.b == null) {
            if (busStationQuery.b != null) {
                return false;
            }
        } else if (!this.b.equals(busStationQuery.b)) {
            return false;
        }
        if (this.c != busStationQuery.c) {
            return false;
        }
        if (this.a == null) {
            if (busStationQuery.a != null) {
                return false;
            }
            return true;
        } else if (!this.a.equals(busStationQuery.a)) {
            return false;
        } else {
            return true;
        }
    }
}
