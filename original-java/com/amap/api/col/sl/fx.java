package com.amap.api.col.sl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.os.Build.VERSION;

/* compiled from: SPUtil */
public final class fx {
    @SuppressLint({"NewApi"})
    public static void a(final Editor editor) {
        if (editor != null) {
            if (VERSION.SDK_INT >= 9) {
                editor.apply();
                return;
            }
            try {
                new AsyncTask<Void, Void, Void>() {
                    /* access modifiers changed from: protected */
                    public final /* synthetic */ Object doInBackground(Object[] objArr) {
                        return a();
                    }

                    private Void a() {
                        try {
                            if (editor != null) {
                                editor.commit();
                            }
                        } catch (Throwable th) {
                            fq.a(th, "SPUtil", "commit");
                        }
                        return null;
                    }
                }.execute(new Void[]{null, null, null});
            } catch (Throwable th) {
                fq.a(th, "SPUtil", "commit1");
            }
        }
    }

    public static void a(Context context, String str, String str2, long j) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putLong(str2, j);
            a(edit);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "setPrefsLong");
        }
    }

    public static long b(Context context, String str, String str2, long j) {
        try {
            return context.getSharedPreferences(str, 0).getLong(str2, j);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "getPrefsLong");
            return j;
        }
    }

    public static void a(Context context, String str, String str2, int i) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putInt(str2, i);
            a(edit);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "setPrefsInt");
        }
    }

    public static int b(Context context, String str, String str2, int i) {
        try {
            return context.getSharedPreferences(str, 0).getInt(str2, i);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "getPrefsInt");
            return i;
        }
    }

    public static void a(Context context, String str, String str2, boolean z) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putBoolean(str2, z);
            a(edit);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "updatePrefsBoolean");
        }
    }

    public static boolean b(Context context, String str, String str2, boolean z) {
        try {
            return context.getSharedPreferences(str, 0).getBoolean(str2, z);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "getPrefsBoolean");
            return z;
        }
    }

    public static String a(Context context, String str, String str2, String str3) {
        try {
            return context.getSharedPreferences(str, 0).getString(str2, str3);
        } catch (Throwable th) {
            fq.a(th, "SPUtil", "getPrefsInt");
            return str3;
        }
    }

    public static String a(Context context) {
        SharedPreferences sharedPreferences;
        String str;
        String str2 = "00:00:00:00:00:00";
        if (context == null) {
            return str2;
        }
        sharedPreferences = context.getSharedPreferences("pref", 0);
        if (sharedPreferences == null) {
            return str2;
        }
        str = "smac";
        if (!sharedPreferences.contains(str)) {
            return str2;
        }
        try {
            String string = sharedPreferences.getString(str, null);
            try {
                return new String(bv.b(string), "UTF-8");
            } catch (Throwable th) {
                Throwable th2 = th;
                str2 = string;
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        fq.a(th, "SPUtil", "getSmac");
        sharedPreferences.edit().remove(str).commit();
        return str2;
    }
}
