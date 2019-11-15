package com.liulishuo.filedownloader.download;

import android.text.TextUtils;
import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: ConnectTask */
public class a {
    final int a;
    final String b;
    final FileDownloadHeader c;
    private b d;
    private String e;
    private Map<String, List<String>> f;
    private List<String> g;

    /* renamed from: com.liulishuo.filedownloader.download.a$a reason: collision with other inner class name */
    /* compiled from: ConnectTask */
    static class C0048a {
        private Integer a;
        private String b;
        private String c;
        private FileDownloadHeader d;
        private b e;

        C0048a() {
        }

        public C0048a a(int i) {
            this.a = Integer.valueOf(i);
            return this;
        }

        public C0048a a(String str) {
            this.b = str;
            return this;
        }

        public C0048a b(String str) {
            this.c = str;
            return this;
        }

        public C0048a a(FileDownloadHeader fileDownloadHeader) {
            this.d = fileDownloadHeader;
            return this;
        }

        public C0048a a(b bVar) {
            this.e = bVar;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public a a() {
            if (this.a != null && this.e != null && this.b != null) {
                return new a(this.e, this.a.intValue(), this.b, this.c, this.d);
            }
            throw new IllegalArgumentException();
        }
    }

    private a(b bVar, int i, String str, String str2, FileDownloadHeader fileDownloadHeader) {
        this.a = i;
        this.b = str;
        this.e = str2;
        this.c = fileDownloadHeader;
        this.d = bVar;
    }

    /* access modifiers changed from: 0000 */
    public void a(long j) {
        if (j == this.d.b) {
            d.d(this, "no data download, no need to update", new Object[0]);
            return;
        }
        long j2 = this.d.d - (j - this.d.b);
        this.d = com.liulishuo.filedownloader.download.b.a.a(this.d.a, j, this.d.c, j2);
        if (d.a) {
            d.b(this, "after update profile:%s", this.d);
        }
    }

    /* access modifiers changed from: 0000 */
    public b a() throws IOException, IllegalAccessException {
        b a2 = c.a().a(this.b);
        a(a2);
        b(a2);
        c(a2);
        this.f = a2.b();
        if (d.a) {
            d.c(this, "<---- %s request header %s", Integer.valueOf(this.a), this.f);
        }
        a2.d();
        this.g = new ArrayList();
        b a3 = com.liulishuo.filedownloader.a.d.a(this.f, a2, this.g);
        if (d.a) {
            d.c(this, "----> %s response header %s", Integer.valueOf(this.a), a3.c());
        }
        return a3;
    }

    private void a(b bVar) {
        if (this.c != null) {
            HashMap a2 = this.c.a();
            if (a2 != null) {
                if (d.a) {
                    d.e(this, "%d add outside header: %s", Integer.valueOf(this.a), a2);
                }
                for (Entry entry : a2.entrySet()) {
                    String str = (String) entry.getKey();
                    List<String> list = (List) entry.getValue();
                    if (list != null) {
                        for (String a3 : list) {
                            bVar.a(str, a3);
                        }
                    }
                }
            }
        }
    }

    private void b(b bVar) throws ProtocolException {
        if (!bVar.a(this.e, this.d.a)) {
            if (!TextUtils.isEmpty(this.e)) {
                bVar.a("If-Match", this.e);
            }
            this.d.a(bVar);
        }
    }

    private void c(b bVar) {
        if (this.c == null || this.c.a().get("User-Agent") == null) {
            bVar.a("User-Agent", g.e());
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean b() {
        return this.d.b > 0;
    }

    /* access modifiers changed from: 0000 */
    public String c() {
        if (this.g == null || this.g.isEmpty()) {
            return null;
        }
        return (String) this.g.get(this.g.size() - 1);
    }

    public Map<String, List<String>> d() {
        return this.f;
    }

    public b e() {
        return this.d;
    }
}
