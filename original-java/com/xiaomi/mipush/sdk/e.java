package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.ifengyu.im.account.UserInfo;
import com.mi.mimsgsdk.utils.Network;
import com.xiaomi.channel.commonutils.misc.b;
import com.xiaomi.channel.commonutils.misc.g.a;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.h;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.c;
import com.xiaomi.xmpush.thrift.f;
import com.xiaomi.xmpush.thrift.j;
import com.xiaomi.xmpush.thrift.m;
import com.xiaomi.xmpush.thrift.n;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class e extends a {
    private final int a = -1;
    private final int b = 3600;
    private Context c;
    private int d;

    public e(Context context, int i) {
        this.c = context;
        this.d = i;
    }

    private static Location a(Location location, Location location2) {
        return location == null ? location2 : (location2 == null || location.getTime() > location2.getTime()) ? location : location2;
    }

    public static void a(Context context, boolean z) {
        byte[] a2 = ar.a(b(context));
        af afVar = new af("-1", false);
        afVar.c(p.GeoUpdateLoc.T);
        afVar.a(a2);
        afVar.a((Map<String, String>) new HashMap<String,String>());
        afVar.i().put(Constants.EXTRA_KEY_INITIAL_WIFI_UPLOAD, String.valueOf(z));
        boolean b2 = h.b(context);
        if (b2) {
            afVar.i().put(Constants.EXTRA_KEY_XMSF_GEO_IS_WORK, String.valueOf(b2));
        }
        z.a(context).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, true, null);
        g(context);
    }

    private boolean a(long j) {
        return ((float) Math.abs((System.currentTimeMillis() / 1000) - this.c.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).getLong("last_upload_lbs_data_timestamp", -1))) > ((float) j) * 0.9f;
    }

    protected static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        return (packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", packageName) == 0) || (packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", packageName) == 0);
    }

    private static n b(Context context) {
        n nVar = new n();
        nVar.a(c(context));
        nVar.b(d(context));
        nVar.a(e(context));
        return nVar;
    }

    private boolean b() {
        if (d.f(this.c)) {
            return true;
        }
        return d.g(this.c) && a((long) Math.max(60, aj.a(this.c).a(f.UploadNOWIFIGeoLocFrequency.a(), 3600)));
    }

    private static List<w> c(Context context) {
        f fVar = new f();
        try {
            List scanResults = ((WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI)).getScanResults();
            if (b.a(scanResults)) {
                return null;
            }
            Collections.sort(scanResults, fVar);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Math.min(30, scanResults.size()); i++) {
                ScanResult scanResult = (ScanResult) scanResults.get(i);
                if (scanResult != null) {
                    w wVar = new w();
                    wVar.a(TextUtils.isEmpty(scanResult.BSSID) ? "" : scanResult.BSSID);
                    wVar.a(scanResult.level);
                    wVar.b(scanResult.SSID);
                    arrayList.add(wVar);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            return null;
        }
    }

    private static List<c> d(Context context) {
        try {
            List neighboringCellInfo = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getNeighboringCellInfo();
            int i = 0;
            ArrayList arrayList = null;
            while (i < neighboringCellInfo.size()) {
                NeighboringCellInfo neighboringCellInfo2 = (NeighboringCellInfo) neighboringCellInfo.get(i);
                ArrayList arrayList2 = new ArrayList();
                if (neighboringCellInfo2.getLac() > 0 || neighboringCellInfo2.getCid() > 0) {
                    c cVar = new c();
                    cVar.a(neighboringCellInfo2.getCid());
                    cVar.b((neighboringCellInfo2.getRssi() * 2) - 113);
                    arrayList2.add(cVar);
                }
                i++;
                arrayList = arrayList2;
            }
            return arrayList;
        } catch (Throwable th) {
            return null;
        }
    }

    private static j e(Context context) {
        if (!a(context)) {
            return null;
        }
        Location f = f(context);
        if (f == null) {
            return null;
        }
        m mVar = new m();
        mVar.b(f.getLatitude());
        mVar.a(f.getLongitude());
        j jVar = new j();
        jVar.a((double) f.getAccuracy());
        jVar.a(mVar);
        jVar.a(f.getProvider());
        jVar.a(new Date().getTime() - f.getTime());
        return jVar;
    }

    private static Location f(Context context) {
        Location location;
        Location location2;
        Location location3;
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        try {
            location = locationManager.getLastKnownLocation("network");
        } catch (Exception e) {
            location = null;
        }
        try {
            location2 = locationManager.getLastKnownLocation(GeocodeSearch.GPS);
        } catch (Exception e2) {
            location2 = null;
        }
        try {
            location3 = locationManager.getLastKnownLocation("passive");
        } catch (Exception e3) {
            location3 = null;
        }
        return a(location3, a(location, location2));
    }

    private static void g(Context context) {
        Editor edit = context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).edit();
        edit.putLong("last_upload_lbs_data_timestamp", System.currentTimeMillis() / 1000);
        edit.commit();
    }

    public int a() {
        return 14;
    }

    public void run() {
        if (h.e(this.c) && aj.a(this.c).a(f.UploadGeoAppLocSwitch.a(), true) && d.e(this.c) && b() && com.xiaomi.channel.commonutils.misc.e.a(this.c, String.valueOf(14), (long) this.d)) {
            a(this.c, false);
        }
    }
}
