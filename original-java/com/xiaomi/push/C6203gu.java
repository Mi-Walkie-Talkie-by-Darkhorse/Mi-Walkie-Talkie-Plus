package com.xiaomi.push;

import java.io.PrintStream;
import java.io.PrintWriter;

/* renamed from: com.xiaomi.push.gu */
/* loaded from: classes2.dex */
public class C6203gu extends Exception {

    /* renamed from: a */
    private C6216hd f21782a;

    /* renamed from: a */
    private C6217he f21783a;

    /* renamed from: a */
    private Throwable f21784a;

    public C6203gu() {
        this.f21782a = null;
        this.f21783a = null;
        this.f21784a = null;
    }

    public C6203gu(C6216hd c6216hd) {
        this.f21782a = null;
        this.f21783a = null;
        this.f21784a = null;
        this.f21782a = c6216hd;
    }

    public C6203gu(String str) {
        super(str);
        this.f21782a = null;
        this.f21783a = null;
        this.f21784a = null;
    }

    public C6203gu(String str, Throwable th) {
        super(str);
        this.f21782a = null;
        this.f21783a = null;
        this.f21784a = null;
        this.f21784a = th;
    }

    public C6203gu(Throwable th) {
        this.f21782a = null;
        this.f21783a = null;
        this.f21784a = null;
        this.f21784a = th;
    }

    /* renamed from: a */
    public Throwable m2703a() {
        return this.f21784a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        C6216hd c6216hd;
        C6217he c6217he;
        String message = super.getMessage();
        return (message != null || (c6217he = this.f21783a) == null) ? (message != null || (c6216hd = this.f21782a) == null) ? message : c6216hd.toString() : c6217he.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        if (this.f21784a != null) {
            printStream.println("Nested Exception: ");
            this.f21784a.printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        if (this.f21784a != null) {
            printWriter.println("Nested Exception: ");
            this.f21784a.printStackTrace(printWriter);
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder();
        String message = super.getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(": ");
        }
        C6217he c6217he = this.f21783a;
        if (c6217he != null) {
            sb.append(c6217he);
        }
        C6216hd c6216hd = this.f21782a;
        if (c6216hd != null) {
            sb.append(c6216hd);
        }
        if (this.f21784a != null) {
            sb.append("\n  -- caused by: ");
            sb.append(this.f21784a);
        }
        return sb.toString();
    }
}
