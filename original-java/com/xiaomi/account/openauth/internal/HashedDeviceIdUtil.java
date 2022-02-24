package com.xiaomi.account.openauth.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.UUID;

/* loaded from: classes2.dex */
public class HashedDeviceIdUtil {
    private static final String ANDROID_ID = "android_id_";
    private static final String PSEUDO_DEVICE_ID_PREFIX = "android_pseudo_";
    private static final String SP_KEY_HASHED_DEVICE_ID = "hashedDeviceId";
    private static final String SP_NAME_DEVICE_ID = "deviceId";
    private static final String TAG = "HashedDeviceIdUtil";
    private final Context mContext;

    public HashedDeviceIdUtil(Context context) {
        this.mContext = context;
    }

    private String createPseudoDeviceId() {
        return String.format("%s%s", PSEUDO_DEVICE_ID_PREFIX, UUID.randomUUID().toString());
    }

    private String getAndroidId() {
        return String.format("%s%s", ANDROID_ID, Settings.Secure.getString(this.mContext.getContentResolver(), "android_id"));
    }

    private String getDeviceId() {
        return ((TelephonyManager) this.mContext.getSystemService("phone")).getDeviceId();
    }

    private String getDeviceIdHashed() {
        try {
            String deviceId = getDeviceId();
            if (legal(deviceId)) {
                return DeviceIdHasher.hashDeviceInfo(deviceId);
            }
            return null;
        } catch (SecurityException unused) {
            return null;
        }
    }

    private SharedPreferences getSP() {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences(SP_NAME_DEVICE_ID, 0);
    }

    private boolean legal(String str) {
        return !TextUtils.isEmpty(str);
    }

    private String loadHistoricalHashedDeviceId() {
        SharedPreferences sp = getSP();
        if (sp == null) {
            return null;
        }
        return sp.getString(SP_KEY_HASHED_DEVICE_ID, null);
    }

    private void saveHistoricalHashedDeviceId(String str) {
        SharedPreferences sp = getSP();
        if (sp != null) {
            sp.edit().putString(SP_KEY_HASHED_DEVICE_ID, str).commit();
        }
    }

    public String getHashedDeviceIdNoThrow() {
        String loadHistoricalHashedDeviceId = loadHistoricalHashedDeviceId();
        if (legal(loadHistoricalHashedDeviceId)) {
            return loadHistoricalHashedDeviceId;
        }
        String deviceIdHashed = getDeviceIdHashed();
        if (deviceIdHashed != null) {
            saveHistoricalHashedDeviceId(deviceIdHashed);
            return deviceIdHashed;
        }
        String androidId = getAndroidId();
        if (legal(androidId)) {
            saveHistoricalHashedDeviceId(androidId);
            return androidId;
        }
        String createPseudoDeviceId = createPseudoDeviceId();
        saveHistoricalHashedDeviceId(createPseudoDeviceId);
        return createPseudoDeviceId;
    }
}
