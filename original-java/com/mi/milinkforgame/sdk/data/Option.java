package com.mi.milinkforgame.sdk.data;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import com.mi.milinkforgame.sdk.base.Global;
import java.util.Map;

public final class Option {
    private static final String TAG = ("options.for." + Global.getPackageName());
    private static Editor editor = preferences.edit();
    private static SharedPreferences preferences = Global.getSharedPreferences(TAG, 0);

    public static Map<String, ?> getAll() {
        return preferences.getAll();
    }

    public static String getString(String str, String str2) {
        return preferences.getString(str, str2);
    }

    public static int getInt(String str, int i) {
        return preferences.getInt(str, i);
    }

    public static long getLong(String str, long j) {
        return preferences.getLong(str, j);
    }

    public static float getFloat(String str, float f) {
        return preferences.getFloat(str, f);
    }

    public static boolean getBoolean(String str, boolean z) {
        return preferences.getBoolean(str, z);
    }

    public static boolean contains(String str) {
        return preferences.contains(str);
    }

    public static void startListen(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        preferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static void stopListen(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        preferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public static Editor putString(String str, String str2) {
        return editor.putString(str, str2);
    }

    public static Editor putInt(String str, int i) {
        return editor.putInt(str, i);
    }

    public static Editor putLong(String str, long j) {
        return editor.putLong(str, j);
    }

    public static Editor putFloat(String str, float f) {
        return editor.putFloat(str, f);
    }

    public static Editor putBoolean(String str, boolean z) {
        return editor.putBoolean(str, z);
    }

    public static Editor remove(String str) {
        return editor.remove(str);
    }

    public static Editor clear() {
        return editor.clear();
    }

    public static boolean commit() {
        return editor.commit();
    }
}
