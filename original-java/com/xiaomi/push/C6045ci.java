package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.push.service.C6372ax;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.xiaomi.push.ci */
/* loaded from: classes2.dex */
public class C6045ci {

    /* renamed from: a */
    private static volatile C6045ci f21153a;

    /* renamed from: a */
    private Context f21154a;

    /* renamed from: a */
    private AbstractC6044ch f21155a;

    /* renamed from: a */
    private final HashMap<String, AbstractC6043cg> f21157a = new HashMap<>();

    /* renamed from: a */
    private ThreadPoolExecutor f21158a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    private final ArrayList<AbstractRunnableC6046a> f21156a = new ArrayList<>();

    /* renamed from: com.xiaomi.push.ci$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractRunnableC6046a implements Runnable {

        /* renamed from: a */
        private AbstractRunnableC6046a f21161a;

        /* renamed from: a */
        private String f21162a;

        /* renamed from: a */
        private WeakReference<Context> f21163a;

        /* renamed from: b */
        protected String f21165b;

        /* renamed from: a */
        protected AbstractC6043cg f21160a = null;

        /* renamed from: a */
        private Random f21164a = new Random();

        /* renamed from: a */
        private int f21159a = 0;

        public AbstractRunnableC6046a(String str) {
            this.f21162a = str;
        }

        /* renamed from: a */
        public SQLiteDatabase mo3504a() {
            return this.f21160a.getWritableDatabase();
        }

        /* renamed from: a */
        public Object mo3511a() {
            return null;
        }

        /* renamed from: a */
        public String m3510a() {
            return this.f21162a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void mo3501a(Context context) {
            AbstractRunnableC6046a abstractRunnableC6046a = this.f21161a;
            if (abstractRunnableC6046a != null) {
                abstractRunnableC6046a.mo3508a(context, mo3511a());
            }
            m3505b(context);
        }

        /* renamed from: a */
        public abstract void mo3500a(Context context, SQLiteDatabase sQLiteDatabase);

        /* renamed from: a */
        public void mo3508a(Context context, Object obj) {
            C6045ci.m3519a(context).m3518a(this);
        }

        /* renamed from: a */
        void m3507a(AbstractC6043cg abstractC6043cg, Context context) {
            this.f21160a = abstractC6043cg;
            this.f21165b = abstractC6043cg.m3522a();
            this.f21163a = new WeakReference<>(context);
        }

        /* renamed from: a */
        public void m3506a(AbstractRunnableC6046a abstractRunnableC6046a) {
            this.f21161a = abstractRunnableC6046a;
        }

        /* renamed from: a */
        public boolean m3509a() {
            return this.f21160a == null || TextUtils.isEmpty(this.f21165b) || this.f21163a == null;
        }

        /* renamed from: b */
        public void m3505b(Context context) {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context;
            WeakReference<Context> weakReference = this.f21163a;
            if (weakReference == null || (context = weakReference.get()) == null || context.getFilesDir() == null || this.f21160a == null || TextUtils.isEmpty(this.f21162a)) {
                return;
            }
            File file = new File(this.f21162a);
            AbstractRunnableC6473x.m1223a(context, new File(file.getParentFile(), C6022bn.m3622b(file.getAbsolutePath())), new RunnableC6052ck(this, context));
        }
    }

    /* renamed from: com.xiaomi.push.ci$b */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC6047b<T> extends AbstractRunnableC6046a {

        /* renamed from: a */
        private int f21166a;

        /* renamed from: a */
        private String f21167a;

        /* renamed from: a */
        private List<String> f21168a;

        /* renamed from: a */
        private String[] f21169a;

        /* renamed from: b */
        private List<T> f21170b;

        /* renamed from: c */
        private String f21171c;

        /* renamed from: d */
        private String f21172d;

        /* renamed from: e */
        private String f21173e;

        public AbstractC6047b(String str, List<String> list, String str2, String[] strArr, String str3, String str4, String str5, int i) {
            super(str);
            this.f21170b = new ArrayList();
            this.f21168a = list;
            this.f21167a = str2;
            this.f21169a = strArr;
            this.f21171c = str3;
            this.f21172d = str4;
            this.f21173e = str5;
            this.f21166a = i;
        }

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public SQLiteDatabase mo3504a() {
            return ((AbstractRunnableC6046a) this).f21160a.getReadableDatabase();
        }

        /* renamed from: a */
        public abstract T mo3503a(Context context, Cursor cursor);

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public void mo3500a(Context context, SQLiteDatabase sQLiteDatabase) {
            String[] strArr;
            this.f21170b.clear();
            List<String> list = this.f21168a;
            if (list == null || list.size() <= 0) {
                strArr = null;
            } else {
                String[] strArr2 = new String[this.f21168a.size()];
                this.f21168a.toArray(strArr2);
                strArr = strArr2;
            }
            int i = this.f21166a;
            Cursor query = sQLiteDatabase.query(super.f21165b, strArr, this.f21167a, this.f21169a, this.f21171c, this.f21172d, this.f21173e, i > 0 ? String.valueOf(i) : null);
            if (query != null && query.moveToFirst()) {
                do {
                    T mo3503a = mo3503a(context, query);
                    if (mo3503a != null) {
                        this.f21170b.add(mo3503a);
                    }
                } while (query.moveToNext());
                query.close();
            }
            mo3502a(context, (List) this.f21170b);
        }

        /* renamed from: a */
        public abstract void mo3502a(Context context, List<T> list);
    }

    /* renamed from: com.xiaomi.push.ci$c */
    /* loaded from: classes2.dex */
    public static class C6048c extends AbstractRunnableC6046a {

        /* renamed from: a */
        private ArrayList<AbstractRunnableC6046a> f21174a;

        public C6048c(String str, ArrayList<AbstractRunnableC6046a> arrayList) {
            super(str);
            ArrayList<AbstractRunnableC6046a> arrayList2 = new ArrayList<>();
            this.f21174a = arrayList2;
            arrayList2.addAll(arrayList);
        }

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public final void mo3501a(Context context) {
            super.mo3501a(context);
            Iterator<AbstractRunnableC6046a> it2 = this.f21174a.iterator();
            while (it2.hasNext()) {
                AbstractRunnableC6046a next = it2.next();
                if (next != null) {
                    next.mo3501a(context);
                }
            }
        }

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public void mo3500a(Context context, SQLiteDatabase sQLiteDatabase) {
            Iterator<AbstractRunnableC6046a> it2 = this.f21174a.iterator();
            while (it2.hasNext()) {
                AbstractRunnableC6046a next = it2.next();
                if (next != null) {
                    next.mo3500a(context, sQLiteDatabase);
                }
            }
        }
    }

    /* renamed from: com.xiaomi.push.ci$d */
    /* loaded from: classes2.dex */
    public static class C6049d extends AbstractRunnableC6046a {

        /* renamed from: a */
        private String f21175a;

        /* renamed from: a */
        protected String[] f21176a;

        public C6049d(String str, String str2, String[] strArr) {
            super(str);
            this.f21175a = str2;
            this.f21176a = strArr;
        }

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public void mo3500a(Context context, SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.delete(this.f21165b, this.f21175a, this.f21176a);
        }
    }

    /* renamed from: com.xiaomi.push.ci$e */
    /* loaded from: classes2.dex */
    public static class C6050e extends AbstractRunnableC6046a {

        /* renamed from: a */
        private ContentValues f21177a;

        public C6050e(String str, ContentValues contentValues) {
            super(str);
            this.f21177a = contentValues;
        }

        @Override // com.xiaomi.push.C6045ci.AbstractRunnableC6046a
        /* renamed from: a */
        public void mo3500a(Context context, SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.insert(this.f21165b, null, this.f21177a);
        }
    }

    private C6045ci(Context context) {
        this.f21154a = context;
    }

    /* renamed from: a */
    private AbstractC6043cg m3515a(String str) {
        AbstractC6043cg abstractC6043cg = this.f21157a.get(str);
        if (abstractC6043cg == null) {
            synchronized (this.f21157a) {
                if (abstractC6043cg == null) {
                    abstractC6043cg = this.f21155a.m3521a(this.f21154a, str);
                    this.f21157a.put(str, abstractC6043cg);
                }
            }
        }
        return abstractC6043cg;
    }

    /* renamed from: a */
    public static C6045ci m3519a(Context context) {
        if (f21153a == null) {
            synchronized (C6045ci.class) {
                if (f21153a == null) {
                    f21153a = new C6045ci(context);
                }
            }
        }
        return f21153a;
    }

    /* renamed from: a */
    private void m3520a() {
        C5978ak.m3784a(this.f21154a).m3771b(new C6051cj(this), C6372ax.m1530a(this.f21154a).m1534a(EnumC6243ia.StatDataProcessFrequency.m2484a(), 5));
    }

    /* renamed from: a */
    public String m3514a(String str) {
        return m3515a(str).m3522a();
    }

    /* renamed from: a */
    public void m3518a(AbstractRunnableC6046a abstractRunnableC6046a) {
        AbstractC6043cg abstractC6043cg;
        if (abstractRunnableC6046a == null) {
            return;
        }
        if (this.f21155a == null) {
            throw new IllegalStateException("should exec init method first!");
        }
        String m3510a = abstractRunnableC6046a.m3510a();
        synchronized (this.f21157a) {
            abstractC6043cg = this.f21157a.get(m3510a);
            if (abstractC6043cg == null) {
                abstractC6043cg = this.f21155a.m3521a(this.f21154a, m3510a);
                this.f21157a.put(m3510a, abstractC6043cg);
            }
        }
        if (this.f21158a.isShutdown()) {
            return;
        }
        abstractRunnableC6046a.m3507a(abstractC6043cg, this.f21154a);
        synchronized (this.f21156a) {
            this.f21156a.add(abstractRunnableC6046a);
            m3520a();
        }
    }

    /* renamed from: a */
    public void m3516a(Runnable runnable) {
        if (this.f21158a.isShutdown()) {
            return;
        }
        this.f21158a.execute(runnable);
    }

    /* renamed from: a */
    public void m3513a(ArrayList<AbstractRunnableC6046a> arrayList) {
        if (this.f21155a == null) {
            throw new IllegalStateException("should exec setDbHelperFactory method first!");
        }
        HashMap hashMap = new HashMap();
        if (this.f21158a.isShutdown()) {
            return;
        }
        Iterator<AbstractRunnableC6046a> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AbstractRunnableC6046a next = it2.next();
            if (next.m3509a()) {
                next.m3507a(m3515a(next.m3510a()), this.f21154a);
            }
            ArrayList arrayList2 = (ArrayList) hashMap.get(next.m3510a());
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                hashMap.put(next.m3510a(), arrayList2);
            }
            arrayList2.add(next);
        }
        for (String str : hashMap.keySet()) {
            ArrayList arrayList3 = (ArrayList) hashMap.get(str);
            if (arrayList3 != null && arrayList3.size() > 0) {
                C6048c c6048c = new C6048c(str, arrayList3);
                c6048c.m3507a(((AbstractRunnableC6046a) arrayList3.get(0)).f21160a, this.f21154a);
                this.f21158a.execute(c6048c);
            }
        }
    }

    /* renamed from: b */
    public void m3512b(AbstractRunnableC6046a abstractRunnableC6046a) {
        AbstractC6043cg abstractC6043cg;
        if (abstractRunnableC6046a == null) {
            return;
        }
        if (this.f21155a == null) {
            throw new IllegalStateException("should exec init method first!");
        }
        String m3510a = abstractRunnableC6046a.m3510a();
        synchronized (this.f21157a) {
            abstractC6043cg = this.f21157a.get(m3510a);
            if (abstractC6043cg == null) {
                abstractC6043cg = this.f21155a.m3521a(this.f21154a, m3510a);
                this.f21157a.put(m3510a, abstractC6043cg);
            }
        }
        if (this.f21158a.isShutdown()) {
            return;
        }
        abstractRunnableC6046a.m3507a(abstractC6043cg, this.f21154a);
        m3516a((Runnable) abstractRunnableC6046a);
    }
}
