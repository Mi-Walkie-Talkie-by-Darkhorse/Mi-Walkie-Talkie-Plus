package com.xiaomi.push;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.push.service.ax;
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

/* loaded from: classes2.dex */
public class ci {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ci f8803a;

    /* renamed from: a  reason: collision with other field name */
    private Context f152a;

    /* renamed from: a  reason: collision with other field name */
    private ch f153a;

    /* renamed from: a  reason: collision with other field name */
    private final HashMap<String, cg> f155a = new HashMap<>();

    /* renamed from: a  reason: collision with other field name */
    private ThreadPoolExecutor f156a = new ThreadPoolExecutor(1, 1, 15, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a  reason: collision with other field name */
    private final ArrayList<a> f154a = new ArrayList<>();

    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with other field name */
        private a f158a;

        /* renamed from: a  reason: collision with other field name */
        private String f159a;

        /* renamed from: a  reason: collision with other field name */
        private WeakReference<Context> f160a;

        /* renamed from: b  reason: collision with root package name */
        protected String f8805b;

        /* renamed from: a  reason: collision with other field name */
        protected cg f157a = null;

        /* renamed from: a  reason: collision with other field name */
        private Random f161a = new Random();

        /* renamed from: a  reason: collision with root package name */
        private int f8804a = 0;

        public a(String str) {
            this.f159a = str;
        }

        public SQLiteDatabase a() {
            return this.f157a.getWritableDatabase();
        }

        /* renamed from: a  reason: collision with other method in class */
        public Object m136a() {
            return null;
        }

        /* renamed from: a  reason: collision with other method in class */
        public String m137a() {
            return this.f159a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(Context context) {
            a aVar = this.f158a;
            if (aVar != null) {
                aVar.a(context, m136a());
            }
            b(context);
        }

        public abstract void a(Context context, SQLiteDatabase sQLiteDatabase);

        public void a(Context context, Object obj) {
            ci.a(context).a(this);
        }

        void a(cg cgVar, Context context) {
            this.f157a = cgVar;
            this.f8805b = cgVar.a();
            this.f160a = new WeakReference<>(context);
        }

        public void a(a aVar) {
            this.f158a = aVar;
        }

        /* renamed from: a  reason: collision with other method in class */
        public boolean m138a() {
            return this.f157a == null || TextUtils.isEmpty(this.f8805b) || this.f160a == null;
        }

        public void b(Context context) {
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context;
            WeakReference<Context> weakReference = this.f160a;
            if (weakReference != null && (context = weakReference.get()) != null && context.getFilesDir() != null && this.f157a != null && !TextUtils.isEmpty(this.f159a)) {
                File file = new File(this.f159a);
                x.a(context, new File(file.getParentFile(), bn.b(file.getAbsolutePath())), new ck(this, context));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b<T> extends a {

        /* renamed from: a  reason: collision with root package name */
        private int f8806a;

        /* renamed from: a  reason: collision with other field name */
        private String f162a;

        /* renamed from: a  reason: collision with other field name */
        private List<String> f163a;

        /* renamed from: a  reason: collision with other field name */
        private String[] f164a;

        /* renamed from: b  reason: collision with root package name */
        private List<T> f8807b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private String f8808c;
        private String d;
        private String e;

        public b(String str, List<String> list, String str2, String[] strArr, String str3, String str4, String str5, int i) {
            super(str);
            this.f163a = list;
            this.f162a = str2;
            this.f164a = strArr;
            this.f8808c = str3;
            this.d = str4;
            this.e = str5;
            this.f8806a = i;
        }

        @Override // com.xiaomi.push.ci.a
        public SQLiteDatabase a() {
            return ((a) this).f157a.getReadableDatabase();
        }

        public abstract T a(Context context, Cursor cursor);

        @Override // com.xiaomi.push.ci.a
        public void a(Context context, SQLiteDatabase sQLiteDatabase) {
            String[] strArr;
            this.f8807b.clear();
            List<String> list = this.f163a;
            String str = null;
            if (list == null || list.size() <= 0) {
                strArr = null;
            } else {
                String[] strArr2 = new String[this.f163a.size()];
                this.f163a.toArray(strArr2);
                strArr = strArr2;
            }
            int i = this.f8806a;
            if (i > 0) {
                str = String.valueOf(i);
            }
            Cursor query = sQLiteDatabase.query(super.f8805b, strArr, this.f162a, this.f164a, this.f8808c, this.d, this.e, str);
            if (query != null && query.moveToFirst()) {
                do {
                    T a2 = a(context, query);
                    if (a2 != null) {
                        this.f8807b.add(a2);
                    }
                } while (query.moveToNext());
                query.close();
            }
            a(context, (List) this.f8807b);
        }

        public abstract void a(Context context, List<T> list);
    }

    /* loaded from: classes2.dex */
    public static class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<a> f8809a;

        public c(String str, ArrayList<a> arrayList) {
            super(str);
            ArrayList<a> arrayList2 = new ArrayList<>();
            this.f8809a = arrayList2;
            arrayList2.addAll(arrayList);
        }

        @Override // com.xiaomi.push.ci.a
        public final void a(Context context) {
            super.a(context);
            Iterator<a> it = this.f8809a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next != null) {
                    next.a(context);
                }
            }
        }

        @Override // com.xiaomi.push.ci.a
        public void a(Context context, SQLiteDatabase sQLiteDatabase) {
            Iterator<a> it = this.f8809a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next != null) {
                    next.a(context, sQLiteDatabase);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class d extends a {

        /* renamed from: a  reason: collision with root package name */
        private String f8810a;

        /* renamed from: a  reason: collision with other field name */
        protected String[] f165a;

        public d(String str, String str2, String[] strArr) {
            super(str);
            this.f8810a = str2;
            this.f165a = strArr;
        }

        @Override // com.xiaomi.push.ci.a
        public void a(Context context, SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.delete(this.f8805b, this.f8810a, this.f165a);
        }
    }

    /* loaded from: classes2.dex */
    public static class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private ContentValues f8811a;

        public e(String str, ContentValues contentValues) {
            super(str);
            this.f8811a = contentValues;
        }

        @Override // com.xiaomi.push.ci.a
        public void a(Context context, SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.insert(this.f8805b, null, this.f8811a);
        }
    }

    private ci(Context context) {
        this.f152a = context;
    }

    private cg a(String str) {
        cg cgVar = this.f155a.get(str);
        if (cgVar == null) {
            synchronized (this.f155a) {
                if (cgVar == null) {
                    cgVar = this.f153a.a(this.f152a, str);
                    this.f155a.put(str, cgVar);
                }
            }
        }
        return cgVar;
    }

    public static ci a(Context context) {
        if (f8803a == null) {
            synchronized (ci.class) {
                if (f8803a == null) {
                    f8803a = new ci(context);
                }
            }
        }
        return f8803a;
    }

    private void a() {
        ak.a(this.f152a).b(new cj(this), ax.a(this.f152a).a(ia.StatDataProcessFrequency.a(), 5));
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m135a(String str) {
        return a(str).a();
    }

    public void a(a aVar) {
        cg cgVar;
        if (aVar != null) {
            if (this.f153a != null) {
                String a2 = aVar.m137a();
                synchronized (this.f155a) {
                    cgVar = this.f155a.get(a2);
                    if (cgVar == null) {
                        cgVar = this.f153a.a(this.f152a, a2);
                        this.f155a.put(a2, cgVar);
                    }
                }
                if (!this.f156a.isShutdown()) {
                    aVar.a(cgVar, this.f152a);
                    synchronized (this.f154a) {
                        this.f154a.add(aVar);
                        a();
                    }
                    return;
                }
                return;
            }
            throw new IllegalStateException("should exec init method first!");
        }
    }

    public void a(Runnable runnable) {
        if (!this.f156a.isShutdown()) {
            this.f156a.execute(runnable);
        }
    }

    public void a(ArrayList<a> arrayList) {
        if (this.f153a != null) {
            HashMap hashMap = new HashMap();
            if (!this.f156a.isShutdown()) {
                Iterator<a> it = arrayList.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (next.m138a()) {
                        next.a(a(next.m137a()), this.f152a);
                    }
                    ArrayList arrayList2 = (ArrayList) hashMap.get(next.m137a());
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        hashMap.put(next.m137a(), arrayList2);
                    }
                    arrayList2.add(next);
                }
                for (String str : hashMap.keySet()) {
                    ArrayList arrayList3 = (ArrayList) hashMap.get(str);
                    if (arrayList3 != null && arrayList3.size() > 0) {
                        c cVar = new c(str, arrayList3);
                        cVar.a(((a) arrayList3.get(0)).f157a, this.f152a);
                        this.f156a.execute(cVar);
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("should exec setDbHelperFactory method first!");
    }

    public void b(a aVar) {
        cg cgVar;
        if (aVar != null) {
            if (this.f153a != null) {
                String a2 = aVar.m137a();
                synchronized (this.f155a) {
                    cgVar = this.f155a.get(a2);
                    if (cgVar == null) {
                        cgVar = this.f153a.a(this.f152a, a2);
                        this.f155a.put(a2, cgVar);
                    }
                }
                if (!this.f156a.isShutdown()) {
                    aVar.a(cgVar, this.f152a);
                    a((Runnable) aVar);
                    return;
                }
                return;
            }
            throw new IllegalStateException("should exec init method first!");
        }
    }
}
