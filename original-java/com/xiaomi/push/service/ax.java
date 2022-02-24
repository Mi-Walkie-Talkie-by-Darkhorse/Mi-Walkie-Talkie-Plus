package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.af;
import com.xiaomi.push.bl;
import com.xiaomi.push.ia;
import com.xiaomi.push.ib;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ax {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ax f9259a;

    /* renamed from: a  reason: collision with other field name */
    protected SharedPreferences f932a;

    /* renamed from: a  reason: collision with other field name */
    private HashSet<a> f933a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    protected SharedPreferences f9260b;

    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {
        private String mDescription;
        private int mId;

        public a(int i, String str) {
            this.mId = i;
            this.mDescription = str;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && this.mId == ((a) obj).mId;
        }

        public int hashCode() {
            return this.mId;
        }

        protected abstract void onCallback();

        @Override // java.lang.Runnable
        public final void run() {
            onCallback();
        }
    }

    private ax(Context context) {
        this.f932a = context.getSharedPreferences("mipush_oc_normal", 0);
        this.f9260b = context.getSharedPreferences("mipush_oc_custom", 0);
    }

    public static ax a(Context context) {
        if (f9259a == null) {
            synchronized (ax.class) {
                if (f9259a == null) {
                    f9259a = new ax(context);
                }
            }
        }
        return f9259a;
    }

    private String a(int i) {
        return "oc_" + i;
    }

    private String a(ib ibVar) {
        return "oc_version_" + ibVar.a();
    }

    private void a(SharedPreferences.Editor editor, Pair<Integer, Object> pair, String str) {
        Object obj = pair.second;
        if (obj instanceof Integer) {
            editor.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            String str2 = (String) obj;
            if (str.equals(a(ia.AppIsInstalledList.a()))) {
                str2 = bl.a(str2);
            }
            editor.putString(str, str2);
        } else if (obj instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) obj).booleanValue());
        }
    }

    public int a(int i, int i2) {
        try {
            String a2 = a(i);
            return this.f9260b.contains(a2) ? this.f9260b.getInt(a2, 0) : this.f932a.contains(a2) ? this.f932a.getInt(a2, 0) : i2;
        } catch (Exception e) {
            b.m1a(i + " oc int error " + e);
            return i2;
        }
    }

    public int a(ib ibVar, int i) {
        try {
            return this.f932a.getInt(a(ibVar), i);
        } catch (Exception e) {
            b.m1a(ibVar + " version error " + e);
            return i;
        }
    }

    public long a(int i, long j) {
        try {
            String a2 = a(i);
            return this.f9260b.contains(a2) ? this.f9260b.getLong(a2, 0L) : this.f932a.contains(a2) ? this.f932a.getLong(a2, 0L) : j;
        } catch (Exception e) {
            b.m1a(i + " oc long error " + e);
            return j;
        }
    }

    public String a(int i, String str) {
        try {
            String a2 = a(i);
            return this.f9260b.contains(a2) ? this.f9260b.getString(a2, null) : this.f932a.contains(a2) ? this.f932a.getString(a2, null) : str;
        } catch (Exception e) {
            b.m1a(i + " oc string error " + e);
            return str;
        }
    }

    public synchronized void a() {
        this.f933a.clear();
    }

    public synchronized void a(a aVar) {
        if (!this.f933a.contains(aVar)) {
            this.f933a.add(aVar);
        }
    }

    public void a(List<Pair<Integer, Object>> list) {
        if (!af.a(list)) {
            SharedPreferences.Editor edit = this.f9260b.edit();
            for (Pair<Integer, Object> pair : list) {
                Object obj = pair.first;
                if (obj != null) {
                    String a2 = a(((Integer) obj).intValue());
                    if (pair.second == null) {
                        edit.remove(a2);
                    } else {
                        a(edit, pair, a2);
                    }
                }
            }
            edit.apply();
        }
    }

    public void a(List<Pair<ib, Integer>> list, List<Pair<Integer, Object>> list2) {
        if (af.a(list) || af.a(list2)) {
            b.m1a("not update oc, because versions or configs are empty");
            return;
        }
        SharedPreferences.Editor edit = this.f932a.edit();
        edit.clear();
        for (Pair<ib, Integer> pair : list) {
            Object obj = pair.first;
            if (!(obj == null || pair.second == null)) {
                edit.putInt(a((ib) obj), ((Integer) pair.second).intValue());
            }
        }
        for (Pair<Integer, Object> pair2 : list2) {
            Object obj2 = pair2.first;
            if (!(obj2 == null || pair2.second == null)) {
                a(edit, pair2, a(((Integer) obj2).intValue()));
            }
        }
        edit.apply();
    }

    public boolean a(int i, boolean z) {
        try {
            String a2 = a(i);
            return this.f9260b.contains(a2) ? this.f9260b.getBoolean(a2, false) : this.f932a.contains(a2) ? this.f932a.getBoolean(a2, false) : z;
        } catch (Exception e) {
            b.m1a(i + " oc boolean error " + e);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        b.c("OC_Callback : receive new oc data");
        HashSet hashSet = new HashSet();
        synchronized (this) {
            hashSet.addAll(this.f933a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.run();
            }
        }
        hashSet.clear();
    }
}
