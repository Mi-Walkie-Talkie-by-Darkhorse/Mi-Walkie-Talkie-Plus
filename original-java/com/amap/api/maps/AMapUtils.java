package com.amap.api.maps;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.amap.api.mapcore.util.fn;
import com.amap.api.mapcore.util.fo;
import com.amap.api.mapcore.util.fq;
import com.amap.api.mapcore.util.g;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.NaviPara;
import com.amap.api.maps.model.PoiPara;
import com.amap.api.maps.model.RoutePara;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Locale;

public class AMapUtils {
    public static final int BUS_COMFORT = 4;
    public static final int BUS_MONEY_LITTLE = 1;
    public static final int BUS_NO_SUBWAY = 5;
    public static final int BUS_TIME_FIRST = 0;
    public static final int BUS_TRANSFER_LITTLE = 2;
    public static final int BUS_WALK_LITTLE = 3;
    public static final int DRIVING_AVOID_CONGESTION = 4;
    public static final int DRIVING_DEFAULT = 0;
    public static final int DRIVING_NO_HIGHWAY = 3;
    public static final int DRIVING_NO_HIGHWAY_AVOID_CONGESTION = 6;
    public static final int DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY = 5;
    public static final int DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION = 8;
    public static final int DRIVING_SAVE_MONEY = 1;
    public static final int DRIVING_SAVE_MONEY_AVOID_CONGESTION = 7;
    public static final int DRIVING_SHORT_DISTANCE = 2;

    static class a extends Thread {
        String a = "";
        Context b;

        public a(String str, Context context) {
            this.a = str;
            if (context != null) {
                this.b = context.getApplicationContext();
            }
        }

        public void run() {
            if (this.b != null) {
                try {
                    fq.a(this.b, new com.amap.api.mapcore.util.fx.a(this.a, "5.7.0", g.c).a(new String[]{"com.amap.api.maps"}).a());
                    interrupt();
                } catch (fn e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        }
    }

    public static float calculateLineDistance(LatLng latLng, LatLng latLng2) {
        if (latLng == null || latLng2 == null) {
            try {
                throw new AMapException(AMapException.ERROR_ILLEGAL_VALUE);
            } catch (AMapException e) {
                ThrowableExtension.printStackTrace(e);
                return 0.0f;
            }
        } else {
            try {
                double d = latLng.longitude;
                double d2 = latLng.latitude;
                double d3 = d * 0.01745329251994329d;
                double d4 = d2 * 0.01745329251994329d;
                double d5 = latLng2.longitude * 0.01745329251994329d;
                double d6 = latLng2.latitude * 0.01745329251994329d;
                double sin = Math.sin(d3);
                double sin2 = Math.sin(d4);
                double cos = Math.cos(d3);
                double cos2 = Math.cos(d4);
                double sin3 = Math.sin(d5);
                double sin4 = Math.sin(d6);
                double cos3 = Math.cos(d5);
                double cos4 = Math.cos(d6);
                double[] dArr = {cos * cos2, cos2 * sin, sin2};
                double[] dArr2 = {cos4 * cos3, cos4 * sin3, sin4};
                return (float) (Math.asin(Math.sqrt((((dArr[0] - dArr2[0]) * (dArr[0] - dArr2[0])) + ((dArr[1] - dArr2[1]) * (dArr[1] - dArr2[1]))) + ((dArr[2] - dArr2[2]) * (dArr[2] - dArr2[2]))) / 2.0d) * 1.27420015798544E7d);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return 0.0f;
            }
        }
    }

    public static float calculateArea(LatLng latLng, LatLng latLng2) {
        float f = 0.0f;
        if (latLng == null || latLng2 == null) {
            try {
                throw new AMapException(AMapException.ERROR_ILLEGAL_VALUE);
            } catch (AMapException e) {
                ThrowableExtension.printStackTrace(e);
                return f;
            }
        } else {
            try {
                double sin = Math.sin((latLng.latitude * 3.141592653589793d) / 180.0d) - Math.sin((latLng2.latitude * 3.141592653589793d) / 180.0d);
                double d = (latLng2.longitude - latLng.longitude) / 360.0d;
                if (d < 0.0d) {
                    d += 1.0d;
                }
                return (float) (d * 6378137.0d * 6.283185307179586d * 6378137.0d * sin);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return f;
            }
        }
    }

    public static void getLatestAMapApp(Context context) {
        String str = "http://wap.amap.com/";
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(276824064);
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse(str));
            new a("glaa", context).start();
            context.startActivity(intent);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public static void openAMapNavi(NaviPara naviPara, Context context) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        } else if (naviPara.getTargetPoint() != null) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(276824064);
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setData(Uri.parse(a(naviPara, context)));
                intent.setPackage("com.autonavi.minimap");
                new a("oan", context).start();
                context.startActivity(intent);
            } catch (Throwable th) {
                throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
            }
        } else {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        }
    }

    public static void openAMapPoiNearbySearch(PoiPara poiPara, Context context) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        } else if (poiPara.getKeywords() == null || poiPara.getKeywords().trim().length() <= 0) {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        } else {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(276824064);
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setData(Uri.parse(a(poiPara, context)));
                intent.setPackage("com.autonavi.minimap");
                new a("oan", context).start();
                context.startActivity(intent);
            } catch (Throwable th) {
                throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
            }
        }
    }

    public static void openAMapDrivingRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 2);
    }

    public static void openAMapTransitRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 1);
    }

    public static void openAMapWalkingRoute(RoutePara routePara, Context context) throws AMapException {
        a(routePara, context, 4);
    }

    private static void a(RoutePara routePara, Context context, int i) throws AMapException {
        if (!a(context)) {
            throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
        } else if (a(routePara)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(276824064);
                intent.addCategory("android.intent.category.DEFAULT");
                intent.setData(Uri.parse(b(routePara, context, i)));
                intent.setPackage("com.autonavi.minimap");
                new a("oan", context).start();
                context.startActivity(intent);
            } catch (Throwable th) {
                throw new AMapException(AMapException.AMAP_NOT_SUPPORT);
            }
        } else {
            throw new AMapException(AMapException.ILLEGAL_AMAP_ARGUMENT);
        }
    }

    private static boolean a(RoutePara routePara) {
        if (routePara.getStartPoint() == null || routePara.getEndPoint() == null || routePara.getStartName() == null || routePara.getStartName().trim().length() <= 0 || routePara.getEndName() == null || routePara.getEndName().trim().length() <= 0) {
            return false;
        }
        return true;
    }

    private static String a(NaviPara naviPara, Context context) {
        return String.format(Locale.US, "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d", new Object[]{fo.b(context), Double.valueOf(naviPara.getTargetPoint().latitude), Double.valueOf(naviPara.getTargetPoint().longitude), Integer.valueOf(naviPara.getNaviStyle())});
    }

    private static String b(RoutePara routePara, Context context, int i) {
        String format = String.format(Locale.US, "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d", new Object[]{fo.b(context), Double.valueOf(routePara.getStartPoint().latitude), Double.valueOf(routePara.getStartPoint().longitude), routePara.getStartName(), Double.valueOf(routePara.getEndPoint().latitude), Double.valueOf(routePara.getEndPoint().longitude), routePara.getEndName(), Integer.valueOf(i)});
        if (i == 1) {
            return format + "&m=" + routePara.getTransitRouteStyle();
        }
        if (i == 2) {
            return format + "&m=" + routePara.getDrivingRouteStyle();
        }
        return format;
    }

    private static String a(PoiPara poiPara, Context context) {
        String format = String.format(Locale.US, "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0", new Object[]{fo.b(context), poiPara.getKeywords()});
        if (poiPara.getCenter() != null) {
            return format + "&lat=" + poiPara.getCenter().latitude + "&lon=" + poiPara.getCenter().longitude;
        }
        return format;
    }

    private static boolean a(Context context) {
        try {
            if (context.getPackageManager().getPackageInfo("com.autonavi.minimap", 0) != null) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e) {
            return false;
        }
    }
}
