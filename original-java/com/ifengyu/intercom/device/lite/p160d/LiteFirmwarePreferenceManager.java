package com.ifengyu.intercom.device.lite.p160d;

import android.content.Context;
import android.content.SharedPreferences;
import com.ifengyu.intercom.http.entity.VersionInfo;

/* renamed from: com.ifengyu.intercom.device.lite.d.r */
/* loaded from: classes2.dex */
public class LiteFirmwarePreferenceManager {

    /* renamed from: a */
    private static SharedPreferences f12196a;

    /* renamed from: b */
    private static LiteFirmwarePreferenceManager f12197b;

    private LiteFirmwarePreferenceManager(Context context) {
        f12196a = context.getApplicationContext().getSharedPreferences("lite_firmware", 0);
    }

    /* renamed from: d */
    public static LiteFirmwarePreferenceManager m14150d(Context context) {
        if (f12197b == null) {
            f12197b = new LiteFirmwarePreferenceManager(context);
        }
        return f12197b;
    }

    /* renamed from: a */
    public VersionInfo m14153a() {
        int i = f12196a.getInt("firmware_version_code", 0);
        String string = f12196a.getString("firmware_version_name", "");
        String string2 = f12196a.getString("firmware_version_source", "");
        String string3 = f12196a.getString("firmware_version_info", "");
        String string4 = f12196a.getString("firmware_version_md5", "");
        String string5 = f12196a.getString("firmware_version_lang", "");
        String string6 = f12196a.getString("firmware_local_path", "");
        int i2 = f12196a.getInt("firmware_upgrade_mode", 1);
        VersionInfo versionInfo = new VersionInfo();
        versionInfo.setSource(string2);
        versionInfo.setVersionCode(i);
        versionInfo.setVersionName(string);
        versionInfo.setInfo(string3);
        versionInfo.setMd5(string4);
        versionInfo.setLang(string5);
        versionInfo.setLocalPath(string6);
        versionInfo.setMode(i2);
        return versionInfo;
    }

    /* renamed from: b */
    public String m14152b() {
        return f12196a.getString("firmware_local_path", "");
    }

    /* renamed from: c */
    public int m14151c() {
        return f12196a.getInt("firmware_version_code", 0);
    }

    /* renamed from: e */
    public void m14149e(VersionInfo versionInfo) {
        if (versionInfo == null) {
            return;
        }
        f12196a.edit().putInt("firmware_version_code", versionInfo.getVersionCode()).putString("firmware_version_name", versionInfo.getVersionName()).putString("firmware_version_source", versionInfo.getSource()).putString("firmware_version_md5", versionInfo.getMd5()).putString("firmware_version_info", versionInfo.getInfo()).putString("firmware_version_lang", versionInfo.getLang()).putInt("firmware_upgrade_mode", versionInfo.getMode()).apply();
    }

    /* renamed from: f */
    public void m14148f(String str) {
        f12196a.edit().putString("firmware_local_path", str).apply();
    }
}
