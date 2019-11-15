package com.amap.api.location;

import android.content.Context;
import com.amap.api.col.sl.fq;
import com.amap.api.col.sl.fr;
import com.amap.api.col.sl.fy;

public class CoordinateConverter {
    DPoint a = null;
    private Context b;
    private CoordType c = null;
    private DPoint d = null;

    public enum CoordType {
        BAIDU,
        MAPBAR,
        MAPABC,
        SOSOMAP,
        ALIYUN,
        GOOGLE,
        GPS
    }

    public CoordinateConverter(Context context) {
        this.b = context;
    }

    public synchronized CoordinateConverter from(CoordType coordType) {
        this.c = coordType;
        return this;
    }

    public synchronized CoordinateConverter coord(DPoint dPoint) throws Exception {
        if (dPoint == null) {
            throw new IllegalArgumentException("传入经纬度对象为空");
        } else if (dPoint.getLongitude() > 180.0d || dPoint.getLongitude() < -180.0d) {
            throw new IllegalArgumentException("请传入合理经度");
        } else if (dPoint.getLatitude() > 90.0d || dPoint.getLatitude() < -90.0d) {
            throw new IllegalArgumentException("请传入合理纬度");
        } else {
            this.d = dPoint;
        }
        return this;
    }

    public synchronized DPoint convert() throws Exception {
        if (this.c == null) {
            throw new IllegalArgumentException("转换坐标类型不能为空");
        } else if (this.d == null) {
            throw new IllegalArgumentException("转换坐标源不能为空");
        } else if (this.d.getLongitude() > 180.0d || this.d.getLongitude() < -180.0d) {
            throw new IllegalArgumentException("请传入合理经度");
        } else if (this.d.getLatitude() > 90.0d || this.d.getLatitude() < -90.0d) {
            throw new IllegalArgumentException("请传入合理纬度");
        } else {
            switch (this.c) {
                case BAIDU:
                    this.a = fr.a(this.d);
                    break;
                case MAPBAR:
                    this.a = fr.b(this.b, this.d);
                    break;
                case MAPABC:
                case SOSOMAP:
                case ALIYUN:
                case GOOGLE:
                    this.a = this.d;
                    break;
                case GPS:
                    this.a = fr.a(this.b, this.d);
                    break;
            }
        }
        return this.a;
    }

    public static boolean isAMapDataAvailable(double d2, double d3) {
        return fq.a(d2, d3);
    }

    public static float calculateLineDistance(DPoint dPoint, DPoint dPoint2) {
        try {
            return fy.a(dPoint, dPoint2);
        } catch (Throwable th) {
            return 0.0f;
        }
    }
}
