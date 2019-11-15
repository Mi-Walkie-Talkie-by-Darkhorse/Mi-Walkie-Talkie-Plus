package com.xiaomi.mistatistic.sdk.controller.asyncjobs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.ifengyu.im.account.UserInfo;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.b;
import com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder;
import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.k;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.q;
import com.xiaomi.mistatistic.sdk.data.e;
import com.xiaomi.mistatistic.sdk.data.h;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

/* compiled from: BasicInfoRecordJob */
public class a implements com.xiaomi.mistatistic.sdk.controller.d.a {
    private boolean a = false;

    public void a() {
        Context a2 = c.a();
        b(a2);
        c(a2);
        if (!k.c(a2, "basic_info_reported")) {
            a(a2);
            k.b(a2, "basic_info_reported", 1);
            this.a = true;
        }
        String e = c.e();
        String a3 = k.a(a2, "basic_info_version", "");
        if (!TextUtils.isEmpty(a3) && !a3.equals(e)) {
            b.c();
            LocalEventRecorder.insertEvent(new e("mistat_basic", "upgrade"));
        }
        k.b(a2, "basic_info_version", e);
        if (this.a) {
            new l().a();
        }
    }

    private void b(Context context) {
        int i = new GregorianCalendar().get(6);
        if (i != k.a(context, "last_day", 0)) {
            k.b(context, "last_day", i);
            LocalEventRecorder.insertEvent(new e("mistat_basic", "mistat_dau"));
            d(context);
            a("ui_version", a("ro.miui.ui.version.name"));
            a("version", VERSION.INCREMENTAL);
            a("sd", f(context));
            a("network", e(context));
            a("carrier_name", a("ro.carrier.name"));
            a("region", a("ro.miui.region"));
            a(Constants.EXTRA_KEY_IMEI_MD5, q.b(com.xiaomi.mistatistic.sdk.controller.e.b(context)));
            a("miui_imei_md5", q.b(q.f(context)));
            a("android_id_md5", q.b(q.c(context)));
            a("serial_num_md5", q.b(q.a()));
            this.a = true;
        }
    }

    private void c(Context context) {
        h hVar;
        if (k.a(context, "uep_property", 0) == 0) {
            if (!q.d(context)) {
                hVar = new h("mistat_basic", "UEP", "not_miui");
            } else if (BuildSetting.isUserExperienceProgramEnabled(context)) {
                hVar = new h("mistat_basic", "UEP", "yes");
            } else {
                hVar = new h("mistat_basic", "UEP", "no");
            }
            LocalEventRecorder.insertEvent(hVar);
            k.b(c.a(), "uep_property", 1);
        }
    }

    @SuppressLint({"NewApi"})
    public void a(Context context) {
        String str;
        LocalEventRecorder.insertEvent(new e("mistat_basic", "new"));
        LocalEventRecorder.insertEvent(new h("mistat_basic", "model", Build.MODEL));
        LocalEventRecorder.insertEvent(new h("mistat_basic", "OS", "android" + VERSION.SDK_INT));
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE);
        if (!TextUtils.isEmpty(telephonyManager.getNetworkOperatorName())) {
            LocalEventRecorder.insertEvent(new h("mistat_basic", "operator", telephonyManager.getSimOperator()));
        }
        a("device_id", new com.xiaomi.mistatistic.sdk.controller.e().a());
        a(Constants.EXTRA_KEY_IMEI_MD5, q.b(com.xiaomi.mistatistic.sdk.controller.e.b(context)));
        a("android_id_md5", q.b(q.c(context)));
        a("serial_num_md5", q.b(q.a()));
        a("mac_md5", q.b(context));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            if (i < i2) {
                str = i + "x" + i2;
            } else {
                str = i2 + "x" + i;
            }
            LocalEventRecorder.insertEvent(new h("mistat_basic", "resolution", str));
        }
        a("locale", Locale.getDefault().toString());
        a(Const.PARAM_CHANNEL, a("ro.sys.miui_rom_channel_id"));
        a("device_name", a("ro.product.mod_device"));
        a("real_model", a("ro.product.model.real"));
        if (q.d(c.a())) {
            try {
                String str2 = Class.forName("miui.os.Build").getField("IS_INTERNATIONAL_BUILD").getBoolean(null) ? "1" : "0";
                com.xiaomi.mistatistic.sdk.controller.h.b("mi:" + str2);
                a("mi", str2);
            } catch (Exception e) {
                com.xiaomi.mistatistic.sdk.controller.h.a("", (Throwable) e);
            }
            try {
                Class cls = Class.forName("miui.os.Build");
                String str3 = cls.getField("IS_ALPHA_BUILD").getBoolean(null) ? TraceFormat.STR_ASSERT : cls.getField("IS_DEVELOPMENT_VERSION").getBoolean(null) ? TraceFormat.STR_DEBUG : "S";
                com.xiaomi.mistatistic.sdk.controller.h.b("bc:" + str3);
                a("bc", str3);
            } catch (Exception e2) {
                com.xiaomi.mistatistic.sdk.controller.h.a("", (Throwable) e2);
            }
        }
    }

    private static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            LocalEventRecorder.insertEvent(new h("mistat_basic", str, str2));
        }
    }

    private static String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class}).invoke(null, new Object[]{str});
        } catch (Exception e) {
            com.xiaomi.mistatistic.sdk.controller.h.a("", (Throwable) e);
            return null;
        }
    }

    private static void d(Context context) {
        try {
            if (CustomSettings.isUploadInstalledPackageEnabled()) {
                ArrayList arrayList = new ArrayList();
                List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(0);
                if (installedApplications != null) {
                    for (ApplicationInfo applicationInfo : installedApplications) {
                        arrayList.add(applicationInfo.packageName);
                    }
                    LocalEventRecorder.insertEvent(new h("mistat_basic", "installed_package", TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, arrayList)));
                }
            }
        } catch (Throwable th) {
            com.xiaomi.mistatistic.sdk.controller.h.a("", th);
        }
    }

    private static String e(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return EnvironmentCompat.MEDIA_UNKNOWN;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return "2G";
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return "3G";
                    case 13:
                        return "4G";
                    default:
                        return EnvironmentCompat.MEDIA_UNKNOWN;
                }
            }
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } catch (Throwable th) {
            com.xiaomi.mistatistic.sdk.controller.h.a("", th);
        }
    }

    private static String f(Context context) {
        String str = "0";
        String str2 = "1";
        String str3 = "2";
        String str4 = "0";
        try {
            String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
            String str5 = System.getenv("SECONDARY_STORAGE");
            if (TextUtils.isEmpty(str5)) {
                return str4;
            }
            if (!a(context, str5) || str5.equals(absolutePath)) {
                return "2";
            }
            return "1";
        } catch (Throwable th) {
            com.xiaomi.mistatistic.sdk.controller.h.a("", th);
            return str4;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static boolean a(Context context, String str) {
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if ("mounted".equals((String) storageManager.getClass().getMethod("getVolumeState", new Class[]{String.class}).invoke(storageManager, new Object[]{str}))) {
                return true;
            }
        } catch (Throwable th) {
            com.xiaomi.mistatistic.sdk.controller.h.a("", th);
        }
        return false;
    }

    public static void b() {
        try {
            Context a2 = c.a();
            if (!q.a(k.a(a2, "dau_time", 0)) && q.a(a2)) {
                LocalEventRecorder.insertEvent(new e("mistat_basic", "mistat_dau_dummy"));
                k.b(a2, "dau_time", System.currentTimeMillis());
                com.xiaomi.mistatistic.sdk.controller.h.b("addDauEventWhenForeground " + System.currentTimeMillis());
            }
        } catch (Exception e) {
            com.xiaomi.mistatistic.sdk.controller.h.a("addDauEventWhenForeground exception: ", (Throwable) e);
        }
    }
}
