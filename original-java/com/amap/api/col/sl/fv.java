package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReportUtil */
public final class fv {
    static AMapLocation g = null;
    private static List<eb> h = new ArrayList();
    private static JSONArray i = null;
    public SparseArray<Long> a = new SparseArray<>();
    public int b = -1;
    public long c = 0;
    String[] d = {"ol", "cl", "gl", "ha", "bs", "ds"};
    public int e = -1;
    public long f = -1;

    private static boolean a(AMapLocation aMapLocation) {
        if (fy.a(aMapLocation)) {
            if (fq.a(aMapLocation.getLatitude(), aMapLocation.getLongitude())) {
                return false;
            }
            return true;
        } else if ("http://abroad.apilocate.amap.com/mobile/binary".equals(fq.a)) {
            return true;
        } else {
            return false;
        }
    }

    public static void a(Context context, AMapLocation aMapLocation) {
        String str;
        int i2 = 0;
        if (aMapLocation != null) {
            try {
                if (!GeocodeSearch.GPS.equalsIgnoreCase(aMapLocation.getProvider()) && aMapLocation.getLocationType() != 1) {
                    String str2 = "domestic";
                    if (a(aMapLocation)) {
                        str2 = "abroad";
                    }
                    if (aMapLocation.getErrorCode() == 0) {
                        switch (aMapLocation.getLocationType()) {
                            case 5:
                            case 6:
                                str = "net";
                                i2 = 1;
                                break;
                            default:
                                str = "cache";
                                i2 = 1;
                                break;
                        }
                    } else {
                        switch (aMapLocation.getErrorCode()) {
                            case 4:
                            case 5:
                            case 6:
                            case 11:
                                str = "net";
                                break;
                            default:
                                str = "cache";
                                break;
                        }
                    }
                    a(context, "O016", str, str2, i2, Integer.MAX_VALUE);
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "reportBatting");
            }
        }
    }

    public static void a(Context context, fu fuVar) {
        String str;
        if (context != null) {
            try {
                if (fp.o()) {
                    ev c2 = fuVar.c();
                    if (fy.a(c2) && !GeocodeSearch.GPS.equalsIgnoreCase(c2.getProvider()) && c2.getLocationType() != 1) {
                        int intValue = Long.valueOf(fuVar.b() - fuVar.a()).intValue();
                        boolean z = false;
                        int intValue2 = Long.valueOf(c2.k()).intValue();
                        switch (c2.getLocationType()) {
                            case 5:
                            case 6:
                                str = "net";
                                break;
                            default:
                                str = "cache";
                                z = true;
                                break;
                        }
                        String str2 = "domestic";
                        if (a((AMapLocation) c2)) {
                            str2 = "abroad";
                        }
                        if (!z) {
                            a(context, "O014", str2, null, intValue2, intValue);
                        }
                        a(context, "O013", str, str2, intValue, Integer.MAX_VALUE);
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "reportLBSLocUseTime");
            }
        }
    }

    public static void a(Context context, long j, boolean z) {
        if (context != null) {
            try {
                if (fp.o()) {
                    int intValue = Long.valueOf(j).intValue();
                    String str = "domestic";
                    if (!z) {
                        str = "abroad";
                    }
                    a(context, "O015", str, null, intValue, Integer.MAX_VALUE);
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "reportGPSLocUseTime");
            }
        }
    }

    private static void a(Context context, String str, int i2, String str2) {
        if (context != null) {
            try {
                if (fp.o()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (i2 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i2);
                    }
                    a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    private static void a(Context context, String str, String str2, String str3, int i2, int i3) {
        if (context != null) {
            try {
                if (fp.o()) {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("param_string_first", str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        jSONObject.put("param_string_second", str3);
                    }
                    if (i2 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_first", i2);
                    }
                    if (i3 != Integer.MAX_VALUE) {
                        jSONObject.put("param_int_second", i3);
                    }
                    a(context, str, jSONObject);
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "applyStatisticsEx");
            }
        }
    }

    private static void a(Context context, String str, JSONObject jSONObject) {
        if (context != null) {
            try {
                if (fp.o()) {
                    eb ebVar = new eb(context, "loc", "3.8.0", str);
                    ebVar.a(jSONObject.toString());
                    h.add(ebVar);
                    if (h.size() >= 100) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(h);
                        ec.a((List<eb>) arrayList, context);
                        h.clear();
                    }
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "applyStatistics");
            }
        }
    }

    public static void a(Context context) {
        if (context != null) {
            try {
                if (fp.o()) {
                    if (h != null && h.size() > 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(h);
                        ec.a((List<eb>) arrayList, context);
                        h.clear();
                    }
                    f(context);
                }
            } catch (Throwable th) {
                fq.a(th, "ReportUtil", "destroy");
            }
        }
    }

    public static void a(String str, String str2) {
        try {
            cm.b(fq.b(), str2, str);
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "reportLog");
        }
    }

    public static boolean a(Context context, bz bzVar) {
        boolean z = false;
        try {
            return cy.a(context, bzVar);
        } catch (Throwable th) {
            return z;
        }
    }

    public static void a(Context context, String str, int i2) {
        try {
            a(context, "O009", i2, str);
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "reportDex_dexLoadClass");
        }
    }

    public static void a(Context context, String str) {
        try {
            a(context, "O010", 0, str);
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "reportDex_dexFunction");
        }
    }

    public final void a(Context context, int i2) {
        try {
            if (this.b != i2) {
                if (!(this.b == -1 || this.b == i2)) {
                    long b2 = fy.b() - this.c;
                    this.a.append(this.b, Long.valueOf(((Long) this.a.get(this.b, Long.valueOf(0))).longValue() + b2));
                }
                this.c = fy.b() - fx.b(context, "pref", this.d[i2], 0);
                this.b = i2;
            }
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "setLocationType");
        }
    }

    public final void b(Context context) {
        try {
            long b2 = fy.b() - this.c;
            if (this.b != -1) {
                this.a.append(this.b, Long.valueOf(((Long) this.a.get(this.b, Long.valueOf(0))).longValue() + b2));
            }
            long b3 = fy.b() - this.f;
            if (this.e != -1) {
                this.a.append(this.e, Long.valueOf(((Long) this.a.get(this.e, Long.valueOf(0))).longValue() + b3));
            }
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < 6) {
                    long longValue = ((Long) this.a.get(i3, Long.valueOf(0))).longValue();
                    if (longValue > 0 && longValue > fx.b(context, "pref", this.d[i3], 0)) {
                        fx.a(context, "pref", this.d[i3], longValue);
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "saveLocationTypeAndMode");
        }
    }

    public final void a(Context context, AMapLocationClientOption aMapLocationClientOption) {
        int i2;
        try {
            switch (aMapLocationClientOption.getLocationMode()) {
                case Battery_Saving:
                    i2 = 4;
                    break;
                case Device_Sensors:
                    i2 = 5;
                    break;
                case Hight_Accuracy:
                    i2 = 3;
                    break;
                default:
                    i2 = -1;
                    break;
            }
            if (this.e != i2) {
                if (!(this.e == -1 || this.e == i2)) {
                    this.a.append(this.e, Long.valueOf((fy.b() - this.f) + ((Long) this.a.get(this.e, Long.valueOf(0))).longValue()));
                }
                this.f = fy.b() - fx.b(context, "pref", this.d[i2], 0);
                this.e = i2;
            }
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "setLocationMode");
        }
    }

    public final int c(Context context) {
        try {
            long b2 = fx.b(context, "pref", this.d[2], 0);
            long b3 = fx.b(context, "pref", this.d[0], 0);
            long b4 = fx.b(context, "pref", this.d[1], 0);
            if (b2 == 0 && b3 == 0 && b4 == 0) {
                return -1;
            }
            long j = b3 - b2;
            long j2 = b4 - b2;
            if (b2 > j) {
                if (b2 > j2) {
                    return 2;
                }
                return 1;
            } else if (j > j2) {
                return 0;
            } else {
                return 1;
            }
        } catch (Throwable th) {
            return -1;
        }
    }

    public final int d(Context context) {
        try {
            long b2 = fx.b(context, "pref", this.d[3], 0);
            long b3 = fx.b(context, "pref", this.d[4], 0);
            long b4 = fx.b(context, "pref", this.d[5], 0);
            if (b2 == 0 && b3 == 0 && b4 == 0) {
                return -1;
            }
            if (b2 > b3) {
                if (b2 > b4) {
                    return 3;
                }
                return 5;
            } else if (b3 > b4) {
                return 4;
            } else {
                return 5;
            }
        } catch (Throwable th) {
            return -1;
        }
    }

    public final void e(Context context) {
        int i2 = 0;
        while (i2 < this.d.length) {
            try {
                fx.a(context, "pref", this.d[i2], 0);
                i2++;
            } catch (Throwable th) {
                return;
            }
        }
    }

    public static void a(Context context, int i2, int i3, long j, long j2) {
        if (i2 != -1 && i3 != -1) {
            String str = "O012";
            if (context != null) {
                try {
                    if (fp.o()) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("param_int_first", i2);
                        jSONObject.put("param_int_second", i3);
                        jSONObject.put("param_long_first", j);
                        jSONObject.put("param_long_second", j2);
                        a(context, str, jSONObject);
                    }
                } catch (Throwable th) {
                    fq.a(th, "ReportUtil", "reportServiceAliveTime");
                }
            }
        }
    }

    public static void b(Context context, AMapLocation aMapLocation) {
        int i2 = 0;
        boolean z = true;
        try {
            if (fy.a(aMapLocation)) {
                switch (aMapLocation.getLocationType()) {
                    case 1:
                        break;
                    case 2:
                    case 4:
                    case 8:
                        i2 = 1;
                        break;
                    case 9:
                        i2 = 2;
                        break;
                    default:
                        z = false;
                        break;
                }
                if (z) {
                    if (i == null) {
                        i = new JSONArray();
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("lon", aMapLocation.getLongitude());
                    jSONObject.put("lat", aMapLocation.getLatitude());
                    jSONObject.put("type", i2);
                    jSONObject.put("timestamp", fy.a());
                    if (i2 == 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("accuracy", (double) aMapLocation.getAccuracy());
                        jSONObject2.put("altitude", aMapLocation.getAltitude());
                        jSONObject2.put("bearing", (double) aMapLocation.getBearing());
                        jSONObject2.put("speed", (double) aMapLocation.getSpeed());
                        jSONObject.put("extension", jSONObject2);
                    }
                    JSONArray put = i.put(jSONObject);
                    i = put;
                    if (put.length() >= fp.p()) {
                        f(context);
                    }
                }
            }
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "recordOfflineLocLog");
        }
    }

    private static void f(Context context) {
        try {
            if (i != null && i.length() > 0) {
                ea.a(new dz(context, fq.b(), i.toString()), context);
                i = null;
            }
        } catch (Throwable th) {
            fq.a(th, "ReportUtil", "writeOfflineLocLog");
        }
    }

    public static void a(String str, int i2) {
        String valueOf = String.valueOf(i2);
        String str2 = "";
        switch (i2) {
            case 2011:
                str2 = "ContextIsNull";
                break;
            case GLMapStaticValue.AM_PARAMETERNAME_TEXTURE_ICON_INFO /*2021*/:
                str2 = "OnlyMainWifi";
                break;
            case 2022:
                str2 = "OnlyOneWifiButNotMain";
                break;
            case 2031:
                str2 = "CreateApsReqException";
                break;
            case 2041:
                str2 = "ResponseResultIsNull";
                break;
            case GLMapStaticValue.AM_PARAMETERNAME_MAP_VALUE /*2051*/:
                str2 = "NeedLoginNetWork\t";
                break;
            case GLMapStaticValue.AM_PARAMETERNAME_MAP_TEXTSCALE /*2052*/:
                str2 = "MaybeIntercepted";
                break;
            case GLMapStaticValue.AM_PARAMETERNAME_RESTORED_MAPMODESTATE /*2053*/:
                str2 = "DecryptResponseException";
                break;
            case 2054:
                str2 = "ParserDataException";
                break;
            case 2061:
                str2 = "ServerRetypeError";
                break;
            case 2062:
                str2 = "ServerLocFail";
                break;
            case 2081:
                str2 = "LocalLocException";
                break;
            case 2091:
                str2 = "InitException";
                break;
            case AMapException.CODE_AMAP_NEARBY_KEY_NOT_BIND /*2101*/:
                str2 = "BindAPSServiceException";
                break;
            case 2102:
                str2 = "AuthClientScodeFail";
                break;
            case 2111:
                str2 = "ErrorCgiInfo";
                break;
            case 2121:
                str2 = "NotLocPermission";
                break;
            case 2131:
                str2 = "NoCgiOAndWifiInfo";
                break;
            case 2132:
                str2 = "AirPlaneModeAndWifiOff";
                break;
            case 2133:
                str2 = "NoCgiAndWifiOff";
                break;
            case 2141:
                str2 = "NoEnoughStatellites";
                break;
            case 2151:
                str2 = "MaybeMockNetLoc";
                break;
            case 2152:
                str2 = "MaybeMockGPSLoc";
                break;
        }
        a(str, valueOf, str2);
    }

    public static void a(String str, String str2, String str3) {
        try {
            cm.a(fq.b(), "/mobile/binary", str3, str, str2);
        } catch (Throwable th) {
        }
    }

    public static void a(String str, Throwable th) {
        try {
            if (th instanceof bo) {
                cm.a(fq.b(), str, (bo) th);
            }
        } catch (Throwable th2) {
        }
    }

    public static void a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        try {
            if (g == null) {
                if (!fy.a(aMapLocation)) {
                    g = aMapLocation2;
                    return;
                }
                g = aMapLocation.clone();
            }
            if (fy.a(g) && fy.a(aMapLocation2)) {
                AMapLocation clone = aMapLocation2.clone();
                if (!(g.getLocationType() == 1 || g.getLocationType() == 9 || g.getProvider().equalsIgnoreCase(GeocodeSearch.GPS) || g.getLocationType() == 7 || clone.getLocationType() == 1 || clone.getLocationType() == 9 || clone.getProvider().equalsIgnoreCase(GeocodeSearch.GPS) || clone.getLocationType() == 7)) {
                    long abs = Math.abs(clone.getTime() - g.getTime()) / 1000;
                    if (abs <= 0) {
                        abs = 1;
                    }
                    if (abs <= 1800) {
                        float a2 = fy.a(g, clone);
                        float f2 = a2 / ((float) abs);
                        if (a2 > 30000.0f && f2 > 1000.0f) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(g.getLatitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(g.getLongitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(g.getAccuracy()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(g.getLocationType()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            if (aMapLocation.getTime() != 0) {
                                sb.append(fy.a(g.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(g.getTime());
                            }
                            sb.append("#");
                            sb.append(clone.getLatitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(clone.getLongitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(clone.getAccuracy()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            sb.append(clone.getLocationType()).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                            if (clone.getTime() != 0) {
                                sb.append(fy.a(clone.getTime(), "yyyyMMdd_HH:mm:ss:SS"));
                            } else {
                                sb.append(clone.getTime());
                            }
                            a("bigshiftstatistics", sb.toString());
                            sb.delete(0, sb.length());
                        }
                    }
                }
                g = clone;
            }
        } catch (Throwable th) {
        }
    }
}
