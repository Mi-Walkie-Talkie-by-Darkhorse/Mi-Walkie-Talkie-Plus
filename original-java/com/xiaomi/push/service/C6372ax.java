package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5973af;
import com.xiaomi.push.C6020bl;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6244ib;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.xiaomi.push.service.ax */
/* loaded from: classes2.dex */
public class C6372ax {

    /* renamed from: a */
    private static volatile C6372ax f23007a;

    /* renamed from: a */
    protected SharedPreferences f23008a;

    /* renamed from: a */
    private HashSet<AbstractRunnableC6373a> f23009a = new HashSet<>();

    /* renamed from: b */
    protected SharedPreferences f23010b;

    /* renamed from: com.xiaomi.push.service.ax$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractRunnableC6373a implements Runnable {
        private String mDescription;
        private int mId;

        public AbstractRunnableC6373a(int i, String str) {
            this.mId = i;
            this.mDescription = str;
        }

        public boolean equals(Object obj) {
            return (obj instanceof AbstractRunnableC6373a) && this.mId == ((AbstractRunnableC6373a) obj).mId;
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

    private C6372ax(Context context) {
        this.f23008a = context.getSharedPreferences("mipush_oc_normal", 0);
        this.f23010b = context.getSharedPreferences("mipush_oc_custom", 0);
    }

    /* renamed from: a */
    public static C6372ax m1530a(Context context) {
        if (f23007a == null) {
            synchronized (C6372ax.class) {
                if (f23007a == null) {
                    f23007a = new C6372ax(context);
                }
            }
        }
        return f23007a;
    }

    /* renamed from: a */
    private String m1535a(int i) {
        return "oc_" + i;
    }

    /* renamed from: a */
    private String m1528a(EnumC6244ib enumC6244ib) {
        return "oc_version_" + enumC6244ib.m2482a();
    }

    /* renamed from: a */
    private void m1529a(SharedPreferences.Editor editor, Pair<Integer, Object> pair, String str) {
        Object obj = pair.second;
        if (obj instanceof Integer) {
            editor.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
        } else if (!(obj instanceof String)) {
            if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
            }
        } else {
            String str2 = (String) obj;
            if (str.equals(m1535a(EnumC6243ia.AppIsInstalledList.m2484a()))) {
                str2 = C6020bl.m3633a(str2);
            }
            editor.putString(str, str2);
        }
    }

    /* renamed from: a */
    public int m1534a(int i, int i2) {
        try {
            String m1535a = m1535a(i);
            return this.f23010b.contains(m1535a) ? this.f23010b.getInt(m1535a, 0) : this.f23008a.contains(m1535a) ? this.f23008a.getInt(m1535a, 0) : i2;
        } catch (Exception e) {
            AbstractC5876b.m4147a(i + " oc int error " + e);
            return i2;
        }
    }

    /* renamed from: a */
    public int m1527a(EnumC6244ib enumC6244ib, int i) {
        try {
            return this.f23008a.getInt(m1528a(enumC6244ib), i);
        } catch (Exception e) {
            AbstractC5876b.m4147a(enumC6244ib + " version error " + e);
            return i;
        }
    }

    /* renamed from: a */
    public long m1533a(int i, long j) {
        try {
            String m1535a = m1535a(i);
            return this.f23010b.contains(m1535a) ? this.f23010b.getLong(m1535a, 0L) : this.f23008a.contains(m1535a) ? this.f23008a.getLong(m1535a, 0L) : j;
        } catch (Exception e) {
            AbstractC5876b.m4147a(i + " oc long error " + e);
            return j;
        }
    }

    /* renamed from: a */
    public String m1532a(int i, String str) {
        try {
            String m1535a = m1535a(i);
            return this.f23010b.contains(m1535a) ? this.f23010b.getString(m1535a, null) : this.f23008a.contains(m1535a) ? this.f23008a.getString(m1535a, null) : str;
        } catch (Exception e) {
            AbstractC5876b.m4147a(i + " oc string error " + e);
            return str;
        }
    }

    /* renamed from: a */
    public synchronized void m1536a() {
        this.f23009a.clear();
    }

    /* renamed from: a */
    public synchronized void m1526a(AbstractRunnableC6373a abstractRunnableC6373a) {
        if (!this.f23009a.contains(abstractRunnableC6373a)) {
            this.f23009a.add(abstractRunnableC6373a);
        }
    }

    /* renamed from: a */
    public void m1525a(List<Pair<Integer, Object>> list) {
        if (C5973af.m3791a(list)) {
            return;
        }
        SharedPreferences.Editor edit = this.f23010b.edit();
        for (Pair<Integer, Object> pair : list) {
            Object obj = pair.first;
            if (obj != null) {
                String m1535a = m1535a(((Integer) obj).intValue());
                if (pair.second == null) {
                    edit.remove(m1535a);
                } else {
                    m1529a(edit, pair, m1535a);
                }
            }
        }
        edit.apply();
    }

    /* renamed from: a */
    public void m1524a(List<Pair<EnumC6244ib, Integer>> list, List<Pair<Integer, Object>> list2) {
        if (C5973af.m3791a(list) || C5973af.m3791a(list2)) {
            AbstractC5876b.m4147a("not update oc, because versions or configs are empty");
            return;
        }
        SharedPreferences.Editor edit = this.f23008a.edit();
        edit.clear();
        for (Pair<EnumC6244ib, Integer> pair : list) {
            Object obj = pair.first;
            if (obj != null && pair.second != null) {
                edit.putInt(m1528a((EnumC6244ib) obj), ((Integer) pair.second).intValue());
            }
        }
        for (Pair<Integer, Object> pair2 : list2) {
            Object obj2 = pair2.first;
            if (obj2 != null && pair2.second != null) {
                m1529a(edit, pair2, m1535a(((Integer) obj2).intValue()));
            }
        }
        edit.apply();
    }

    /* renamed from: a */
    public boolean m1531a(int i, boolean z) {
        try {
            String m1535a = m1535a(i);
            return this.f23010b.contains(m1535a) ? this.f23010b.getBoolean(m1535a, false) : this.f23008a.contains(m1535a) ? this.f23008a.getBoolean(m1535a, false) : z;
        } catch (Exception e) {
            AbstractC5876b.m4147a(i + " oc boolean error " + e);
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1523b() {
        AbstractC5876b.m4139c("OC_Callback : receive new oc data");
        HashSet hashSet = new HashSet();
        synchronized (this) {
            hashSet.addAll(this.f23009a);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            AbstractRunnableC6373a abstractRunnableC6373a = (AbstractRunnableC6373a) it2.next();
            if (abstractRunnableC6373a != null) {
                abstractRunnableC6373a.run();
            }
        }
        hashSet.clear();
    }
}
