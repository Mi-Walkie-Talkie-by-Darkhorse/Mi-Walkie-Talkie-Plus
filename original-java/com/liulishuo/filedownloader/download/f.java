package com.liulishuo.filedownloader.download;

import android.os.SystemClock;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FetchDataTask */
public class f {
    long a;
    private final g b;
    private final int c;
    private final int d;
    private final d e;
    private final b f;
    private final boolean g;
    private final long h;
    private final long i;
    private final long j;
    private final String k;
    private com.liulishuo.filedownloader.d.a l;
    private volatile boolean m;
    private final com.liulishuo.filedownloader.b.a n;
    private volatile long o;
    private volatile long p;

    /* compiled from: FetchDataTask */
    public static class a {
        d a;
        b b;
        b c;
        g d;
        String e;
        Boolean f;
        Integer g;
        Integer h;

        public a a(b bVar) {
            this.b = bVar;
            return this;
        }

        public a a(b bVar) {
            this.c = bVar;
            return this;
        }

        public a a(g gVar) {
            this.d = gVar;
            return this;
        }

        public a a(String str) {
            this.e = str;
            return this;
        }

        public a a(boolean z) {
            this.f = Boolean.valueOf(z);
            return this;
        }

        public a a(d dVar) {
            this.a = dVar;
            return this;
        }

        public a a(int i) {
            this.g = Integer.valueOf(i);
            return this;
        }

        public a b(int i) {
            this.h = Integer.valueOf(i);
            return this;
        }

        public f a() throws IllegalArgumentException {
            if (this.f != null && this.b != null && this.c != null && this.d != null && this.e != null && this.h != null && this.g != null) {
                return new f(this.b, this.c, this.a, this.h.intValue(), this.g.intValue(), this.f.booleanValue(), this.d, this.e);
            }
            throw new IllegalArgumentException();
        }
    }

    public void a() {
        this.m = true;
    }

    private f(b bVar, b bVar2, d dVar, int i2, int i3, boolean z, g gVar, String str) {
        this.o = 0;
        this.p = 0;
        this.b = gVar;
        this.k = str;
        this.f = bVar;
        this.g = z;
        this.e = dVar;
        this.d = i3;
        this.c = i2;
        this.n = c.a().c();
        this.h = bVar2.a;
        this.i = bVar2.c;
        this.a = bVar2.b;
        this.j = bVar2.d;
    }

    public void b() throws IOException, IllegalAccessException, IllegalArgumentException, FileDownloadGiveUpRetryException {
        long j2;
        String a2;
        if (!this.m) {
            long c2 = g.c(this.d, this.f);
            if (c2 == -1) {
                j2 = g.c(this.f);
            } else {
                j2 = c2;
            }
            if (j2 == 0) {
                throw new FileDownloadGiveUpRetryException(g.a("there isn't any content need to download on %d-%d with the content-length is 0", Integer.valueOf(this.c), Integer.valueOf(this.d)));
            } else if (this.j <= 0 || j2 == this.j) {
                long j3 = this.a;
                InputStream inputStream = null;
                boolean z = null;
                z = c.a().e();
                if (this.e == null || z) {
                    try {
                        z = g.n(this.k);
                        this.l = z;
                        if (z) {
                            z.a(this.a);
                        }
                        if (d.a) {
                            d.c(this, "start fetch(%d): range [%d, %d), seek to[%d]", Integer.valueOf(this.d), Long.valueOf(this.h), Long.valueOf(this.i), Long.valueOf(this.a));
                        }
                        inputStream = this.f.a();
                        byte[] bArr = new byte[4096];
                        if (this.m) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    ThrowableExtension.printStackTrace(e2);
                                }
                            }
                            if (z != null) {
                                try {
                                    d();
                                } catch (Throwable th) {
                                    if (z != null) {
                                        try {
                                            z.b();
                                        } catch (IOException e3) {
                                            ThrowableExtension.printStackTrace(e3);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            if (z != null) {
                                try {
                                    z.b();
                                } catch (IOException e4) {
                                    ThrowableExtension.printStackTrace(e4);
                                }
                            }
                        } else {
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e5) {
                                            ThrowableExtension.printStackTrace(e5);
                                        }
                                    }
                                    if (z != null) {
                                        try {
                                            d();
                                        } catch (Throwable th2) {
                                            if (z != null) {
                                                try {
                                                    z.b();
                                                } catch (IOException e6) {
                                                    ThrowableExtension.printStackTrace(e6);
                                                }
                                            }
                                            throw th2;
                                        }
                                    }
                                    if (z != null) {
                                        try {
                                            z.b();
                                        } catch (IOException e7) {
                                            ThrowableExtension.printStackTrace(e7);
                                        }
                                    }
                                    long j4 = this.a - j3;
                                    if (j2 == -1 || j2 == j4) {
                                        this.b.a(this.e, this.h, this.i);
                                        return;
                                    } else {
                                        throw new FileDownloadGiveUpRetryException(g.a("fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset[%d]", Long.valueOf(j4), Long.valueOf(j2), Long.valueOf(this.h), Long.valueOf(this.i), Long.valueOf(this.a), Long.valueOf(j3)));
                                    }
                                } else {
                                    z.a(bArr, 0, read);
                                    this.a += (long) read;
                                    this.b.a((long) read);
                                    c();
                                    if (this.m) {
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException e8) {
                                                ThrowableExtension.printStackTrace(e8);
                                            }
                                        }
                                        if (z != null) {
                                            try {
                                                d();
                                            } catch (Throwable th3) {
                                                if (z != null) {
                                                    try {
                                                        z.b();
                                                    } catch (IOException e9) {
                                                        ThrowableExtension.printStackTrace(e9);
                                                    }
                                                }
                                                throw th3;
                                            }
                                        }
                                        if (z != null) {
                                            try {
                                                z.b();
                                                return;
                                            } catch (IOException e10) {
                                                ThrowableExtension.printStackTrace(e10);
                                                return;
                                            }
                                        } else {
                                            return;
                                        }
                                    } else if (this.g && g.d()) {
                                        throw new FileDownloadNetworkPolicyException();
                                    }
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        if (z != null) {
                            try {
                                z.close();
                            } catch (IOException e11) {
                                ThrowableExtension.printStackTrace(e11);
                            }
                        }
                        if (z != null) {
                            d();
                        }
                        if (z != null) {
                            try {
                                z.b();
                            } catch (IOException e12) {
                                ThrowableExtension.printStackTrace(e12);
                            }
                        }
                        throw th4;
                    } finally {
                        if (z != null) {
                            try {
                                z.b();
                            } catch (IOException e13) {
                                ThrowableExtension.printStackTrace(e13);
                            }
                        }
                    }
                } else {
                    throw new IllegalAccessException("can't using multi-download when the output stream can't support seek");
                }
            } else {
                if (this.i == -1) {
                    a2 = g.a("range[%d-)", Long.valueOf(this.a));
                } else {
                    a2 = g.a("range[%d-%d)", Long.valueOf(this.a), Long.valueOf(this.i));
                }
                throw new FileDownloadGiveUpRetryException(g.a("require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem.", a2, Long.valueOf(this.j), Long.valueOf(j2), Integer.valueOf(this.c), Integer.valueOf(this.d)));
            }
        }
    }

    private void c() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (g.a(this.a - this.o, elapsedRealtime - this.p)) {
            d();
            this.o = this.a;
            this.p = elapsedRealtime;
        }
    }

    private void d() {
        boolean z;
        boolean z2;
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            this.l.a();
            z = true;
        } catch (IOException e2) {
            if (d.a) {
                d.c(this, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s", e2);
            }
            z = false;
        }
        if (z) {
            if (this.d >= 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                this.n.a(this.c, this.d, this.a);
            } else {
                this.b.c();
            }
            if (d.a) {
                d.c(this, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]", Integer.valueOf(this.c), Integer.valueOf(this.d), Long.valueOf(this.a), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
            }
        }
    }
}
