package com.sina.weibo.sdk.net;

import android.content.Context;
import android.os.AsyncTask;
import com.sina.weibo.sdk.b.g;
import com.sina.weibo.sdk.exception.WeiboException;

/* compiled from: AsyncWeiboRunner */
public class a {
    private Context a;

    /* renamed from: com.sina.weibo.sdk.net.a$a reason: collision with other inner class name */
    /* compiled from: AsyncWeiboRunner */
    private static class C0050a<T> {
        private T a;
        private WeiboException b;

        public T a() {
            return this.a;
        }

        public WeiboException b() {
            return this.b;
        }

        public C0050a(T t) {
            this.a = t;
        }

        public C0050a(WeiboException weiboException) {
            this.b = weiboException;
        }
    }

    /* compiled from: AsyncWeiboRunner */
    static class b extends AsyncTask<Void, Void, C0050a<String>> {
        private final Context a;
        private final String b;
        private final f c;
        private final String d;
        private final d e;

        public b(Context context, String str, f fVar, String str2, d dVar) {
            this.a = context;
            this.b = str;
            this.c = fVar;
            this.d = str2;
            this.e = dVar;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public C0050a<String> doInBackground(Void... voidArr) {
            try {
                return new C0050a<>(HttpManager.a(this.a, this.b, this.d, this.c));
            } catch (WeiboException e2) {
                return new C0050a<>(e2);
            }
        }

        /* access modifiers changed from: protected */
        public void onPreExecute() {
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(C0050a<String> aVar) {
            WeiboException b2 = aVar.b();
            if (b2 != null) {
                this.e.a(b2);
            } else {
                this.e.a((String) aVar.a());
            }
        }
    }

    public a(Context context) {
        this.a = context;
    }

    public void a(String str, f fVar, String str2, d dVar) {
        g.a(this.a, fVar.a()).a();
        new b(this.a, str, fVar, str2, dVar).execute(new Void[1]);
    }
}
