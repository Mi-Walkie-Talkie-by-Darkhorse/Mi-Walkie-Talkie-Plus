package com.amap.api.maps;

import android.content.Context;
import com.amap.api.mapcore.util.ac;
import com.amap.api.mapcore.util.dy;
import com.amap.api.mapcore.util.gf;
import com.amap.api.maps.model.LatLng;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class CoordinateConverter {
    private Context a;
    private CoordType b = null;
    private LatLng c = null;

    public enum CoordType {
        BAIDU,
        MAPBAR,
        GPS,
        MAPABC,
        SOSOMAP,
        ALIYUN,
        GOOGLE
    }

    public CoordinateConverter(Context context) {
        this.a = context;
    }

    public CoordinateConverter from(CoordType coordType) {
        this.b = coordType;
        return this;
    }

    public CoordinateConverter coord(LatLng latLng) {
        this.c = latLng;
        return this;
    }

    public LatLng convert() {
        if (this.b == null || this.c == null) {
            return null;
        }
        try {
            switch (this.b) {
                case BAIDU:
                    return ac.a(this.c);
                case MAPBAR:
                    return ac.b(this.a, this.c);
                case MAPABC:
                case SOSOMAP:
                case ALIYUN:
                case GOOGLE:
                    return this.c;
                case GPS:
                    return ac.a(this.a, this.c);
                default:
                    return null;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            gf.b(th, "CoordinateConverter", "convert");
            return this.c;
        }
    }

    public static boolean isAMapDataAvailable(double d, double d2) {
        return dy.a(d, d2);
    }
}
