package com.mi.mimsgsdk.upload;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public abstract class PreferenceUtils {
    public static final String KEY_RELEASE_CHANNEL = "pref_channel";
    private static final String PREFS_NAME = "EngineType";
    public static final String PREF_KEY_ATTACHMENT_BASE_ID = "pref_key_attachment_base_id";
    public static final String PREF_KEY_PLAY_MODE = "play_mode";
    private static String TAG = "PreferenceUtils";
    private static final ArrayList<PrefObserver> sPrefObs = new ArrayList<>();

    public interface PrefObserver {
        void notifyPrefChange(String str, Object obj);
    }

    public static void addPrefObserver(PrefObserver prefObserver) {
        sPrefObs.add(prefObserver);
    }

    public static void removePrefObserver(PrefObserver prefObserver) {
        Iterator it = sPrefObs.iterator();
        while (it.hasNext()) {
            PrefObserver prefObserver2 = (PrefObserver) it.next();
            if (prefObserver2 == prefObserver) {
                sPrefObs.remove(prefObserver2);
                return;
            }
        }
    }

    public static void notifyPrefChange(String str, Object obj) {
        Iterator it = sPrefObs.iterator();
        while (it.hasNext()) {
            ((PrefObserver) it.next()).notifyPrefChange(str, obj);
        }
    }

    public static void setSettingString(SharedPreferences sharedPreferences, String str, String str2) {
        sharedPreferences.edit().putString(str, str2).commit();
    }

    public static String getSettingString(SharedPreferences sharedPreferences, String str, String str2) {
        return sharedPreferences.getString(str, str2);
    }

    public static String getSettingString(Context context, String str, String str2) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(str, str2);
    }

    public static void setSettingString(Context context, String str, String str2) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(str, str2).commit();
    }

    public static void setSettingBoolean(SharedPreferences sharedPreferences, String str, boolean z) {
        sharedPreferences.edit().putBoolean(str, z).commit();
    }

    public static boolean getSettingBoolean(SharedPreferences sharedPreferences, String str, boolean z) {
        return sharedPreferences.getBoolean(str, z);
    }

    public static boolean getSettingBoolean(Context context, String str, boolean z) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean(str, z);
    }

    public static void setSettingBoolean(Context context, String str, boolean z) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean(str, z).commit();
    }

    public static void setSettingInt(Context context, String str, int i) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(str, i).commit();
    }

    public static void clear(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
    }

    public static void increaseSettingInt(Context context, String str) {
        increaseSettingInt(PreferenceManager.getDefaultSharedPreferences(context), str);
    }

    public static int getSettingInt(Context context, String str, int i) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt(str, i);
    }

    public static void setSettingFloat(SharedPreferences sharedPreferences, String str, float f) {
        sharedPreferences.edit().putFloat(str, f).commit();
    }

    public static float getSettingFloat(SharedPreferences sharedPreferences, String str, float f) {
        return sharedPreferences.getFloat(str, f);
    }

    public static void setSettingFloat(Context context, String str, float f) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putFloat(str, f).commit();
    }

    public static float getSettingFloat(Context context, String str, float f) {
        return PreferenceManager.getDefaultSharedPreferences(context).getFloat(str, f);
    }

    public static void setSettingLong(Context context, String str, long j) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong(str, j).commit();
    }

    public static long getSettingLong(Context context, String str, long j) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, j);
    }

    public static void setSettingLong(SharedPreferences sharedPreferences, String str, long j) {
        sharedPreferences.edit().putLong(str, j).commit();
    }

    public static long getSettingLong(SharedPreferences sharedPreferences, String str, long j) {
        return sharedPreferences.getLong(str, j);
    }

    public static void setSettingInt(SharedPreferences sharedPreferences, String str, int i) {
        sharedPreferences.edit().putInt(str, i).commit();
    }

    public static int getSettingInt(SharedPreferences sharedPreferences, String str, int i) {
        return sharedPreferences.getInt(str, i);
    }

    public static void increaseSettingInt(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.edit().putInt(str, sharedPreferences.getInt(str, 0) + 1).commit();
    }

    public static void increaseSettingInt(SharedPreferences sharedPreferences, String str, int i) {
        sharedPreferences.edit().putInt(str, sharedPreferences.getInt(str, 0) + i).commit();
    }

    public static void increaseSettingLong(SharedPreferences sharedPreferences, String str, long j) {
        sharedPreferences.edit().putLong(str, sharedPreferences.getLong(str, 0) + j).commit();
    }

    public static boolean hasKey(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).contains(str);
    }

    public static void removePreference(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove(str).commit();
    }

    public static void clearPreference(SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        edit.clear();
        edit.commit();
    }

    public static void dumpDefaultPreference(Context context) {
        dumpPreference(PreferenceManager.getDefaultSharedPreferences(context), "default preference:");
    }

    public static void dumpDefaultPreference(Context context, String str) {
        dumpPreference(context.getSharedPreferences(str, 0), str);
    }

    private static void dumpPreference(SharedPreferences sharedPreferences, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("\n");
        Map all = sharedPreferences.getAll();
        for (String str2 : all.keySet()) {
            stringBuffer.append(str2);
            stringBuffer.append(":");
            stringBuffer.append(all.get(str2));
            stringBuffer.append("\n");
        }
        ClientLog.w(TAG, stringBuffer.toString());
    }
}
