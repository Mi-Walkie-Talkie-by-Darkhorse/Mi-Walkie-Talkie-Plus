package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Pair;
import com.xiaomi.channel.commonutils.misc.b;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.util.List;

public class aj {
    private static volatile aj b;
    protected SharedPreferences a;

    private aj(Context context) {
        this.a = context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
    }

    public static aj a(Context context) {
        if (b == null) {
            synchronized (aj.class) {
                if (b == null) {
                    b = new aj(context);
                }
            }
        }
        return b;
    }

    private String a(int i) {
        return "normal_oc_" + i;
    }

    private void a(Editor editor, Pair<Integer, Object> pair, String str) {
        if (pair.second instanceof Integer) {
            editor.putInt(str, ((Integer) pair.second).intValue());
        } else if (pair.second instanceof Long) {
            editor.putLong(str, ((Long) pair.second).longValue());
        } else if (pair.second instanceof String) {
            editor.putString(str, (String) pair.second);
        } else if (pair.second instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) pair.second).booleanValue());
        }
    }

    private String b(int i) {
        return "custom_oc_" + i;
    }

    public int a(int i, int i2) {
        String b2 = b(i);
        if (this.a.contains(b2)) {
            return this.a.getInt(b2, 0);
        }
        String a2 = a(i);
        return this.a.contains(a2) ? this.a.getInt(a2, 0) : i2;
    }

    public String a(int i, String str) {
        String b2 = b(i);
        if (this.a.contains(b2)) {
            return this.a.getString(b2, null);
        }
        String a2 = a(i);
        return this.a.contains(a2) ? this.a.getString(a2, null) : str;
    }

    public void a(List<Pair<Integer, Object>> list) {
        if (!b.a(list)) {
            Editor edit = this.a.edit();
            for (Pair pair : list) {
                if (!(pair.first == null || pair.second == null)) {
                    a(edit, pair, a(((Integer) pair.first).intValue()));
                }
            }
            edit.commit();
        }
    }

    public boolean a(int i, boolean z) {
        String b2 = b(i);
        if (this.a.contains(b2)) {
            return this.a.getBoolean(b2, false);
        }
        String a2 = a(i);
        return this.a.contains(a2) ? this.a.getBoolean(a2, false) : z;
    }

    public void b(List<Pair<Integer, Object>> list) {
        if (!b.a(list)) {
            Editor edit = this.a.edit();
            for (Pair pair : list) {
                if (pair.first != null) {
                    String b2 = b(((Integer) pair.first).intValue());
                    if (pair.second == null) {
                        edit.remove(b2);
                    } else {
                        a(edit, pair, b2);
                    }
                }
            }
            edit.commit();
        }
    }
}
