package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.e.e;
import com.liulishuo.filedownloader.e.g;
import java.net.ProtocolException;
import org.apache.http.client.methods.HttpHead;

/* compiled from: ConnectionProfile */
public class b {
    final long a;
    final long b;
    final long c;
    final long d;
    private final boolean e;
    private final boolean f;

    /* compiled from: ConnectionProfile */
    public static class a {
        public static b a() {
            return new b();
        }

        public static b b() {
            return new b(0, 0, 0, 0, true);
        }

        public static b a(long j) {
            return new b(0, 0, -1, j);
        }

        public static b a(long j, long j2, long j3) {
            return new b(j, j2, -1, j3);
        }

        public static b a(long j, long j2, long j3, long j4) {
            return new b(j, j2, j3, j4);
        }
    }

    private b() {
        this.a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = false;
        this.f = true;
    }

    private b(long j, long j2, long j3, long j4) {
        this(j, j2, j3, j4, false);
    }

    private b(long j, long j2, long j3, long j4, boolean z) {
        if (!(j == 0 && j3 == 0) && z) {
            throw new IllegalArgumentException();
        }
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = z;
        this.f = false;
    }

    public void a(com.liulishuo.filedownloader.a.b bVar) throws ProtocolException {
        String a2;
        if (!this.e) {
            if (this.f && e.a().h) {
                bVar.b(HttpHead.METHOD_NAME);
            }
            if (this.c == -1) {
                a2 = g.a("bytes=%d-", Long.valueOf(this.b));
            } else {
                a2 = g.a("bytes=%d-%d", Long.valueOf(this.b), Long.valueOf(this.c));
            }
            bVar.a("Range", a2);
        }
    }

    public String toString() {
        return g.a("range[%d, %d) current offset[%d]", Long.valueOf(this.a), Long.valueOf(this.c), Long.valueOf(this.b));
    }
}
