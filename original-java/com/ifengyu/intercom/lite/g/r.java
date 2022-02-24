package com.ifengyu.intercom.lite.g;

import android.content.Context;
import android.content.SharedPreferences;
import com.ifengyu.intercom.lite.http.entity.FirmwareInfo;

/* compiled from: FirmwarePreferenceManager.java */
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f5583a;

    /* renamed from: b  reason: collision with root package name */
    private static r f5584b;

    private r(Context context) {
        f5583a = context.getApplicationContext().getSharedPreferences("lite_firmware", 0);
    }

    public static r a(Context context) {
        if (f5584b == null) {
            f5584b = new r(context);
        }
        return f5584b;
    }

    public String b() {
        return f5583a.getString("firmware_local_path", "");
    }

    public int c() {
        return f5583a.getInt("firmware_version_code", 0);
    }

    public void a(String str) {
        f5583a.edit().putString("firmware_local_path", str).apply();
    }

    public void a(FirmwareInfo firmwareInfo) {
        if (firmwareInfo != null) {
            f5583a.edit().putInt("firmware_version_code", firmwareInfo.getVersionCode()).putString("firmware_version_name", firmwareInfo.getVersionName()).putString("firmware_version_source", firmwareInfo.getSource()).putString("firmware_version_md5", firmwareInfo.getMD5()).putString("firmware_version_info", firmwareInfo.getInfo()).putString("firmware_version_lang", firmwareInfo.getLang()).putInt("firmware_upgrade_mode", firmwareInfo.getMode()).apply();
        }
    }

    public FirmwareInfo a() {
        int i = f5583a.getInt("firmware_version_code", 0);
        String string = f5583a.getString("firmware_version_name", "");
        String string2 = f5583a.getString("firmware_version_source", "");
        String string3 = f5583a.getString("firmware_version_info", "");
        String string4 = f5583a.getString("firmware_version_md5", "");
        String string5 = f5583a.getString("firmware_version_lang", "");
        String string6 = f5583a.getString("firmware_local_path", "");
        int i2 = f5583a.getInt("firmware_upgrade_mode", 1);
        FirmwareInfo firmwareInfo = new FirmwareInfo();
        firmwareInfo.setSource(string2);
        firmwareInfo.setVersionCode(i);
        firmwareInfo.setVersionName(string);
        firmwareInfo.setInfo(string3);
        firmwareInfo.setMD5(string4);
        firmwareInfo.setLang(string5);
        firmwareInfo.setLocalPath(string6);
        firmwareInfo.setMode(i2);
        return firmwareInfo;
    }
}
