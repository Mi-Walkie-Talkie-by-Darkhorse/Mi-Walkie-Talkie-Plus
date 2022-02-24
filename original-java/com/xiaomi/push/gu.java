package com.xiaomi.push;

import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class gu extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private hd f9007a;

    /* renamed from: a  reason: collision with other field name */
    private he f449a;

    /* renamed from: a  reason: collision with other field name */
    private Throwable f450a;

    public gu() {
        this.f9007a = null;
        this.f449a = null;
        this.f450a = null;
    }

    public gu(hd hdVar) {
        this.f9007a = null;
        this.f449a = null;
        this.f450a = null;
        this.f9007a = hdVar;
    }

    public gu(String str) {
        super(str);
        this.f9007a = null;
        this.f449a = null;
        this.f450a = null;
    }

    public gu(String str, Throwable th) {
        super(str);
        this.f9007a = null;
        this.f449a = null;
        this.f450a = null;
        this.f450a = th;
    }

    public gu(Throwable th) {
        this.f9007a = null;
        this.f449a = null;
        this.f450a = null;
        this.f450a = th;
    }

    public Throwable a() {
        return this.f450a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        hd hdVar;
        he heVar;
        String message = super.getMessage();
        return (message != null || (heVar = this.f449a) == null) ? (message != null || (hdVar = this.f9007a) == null) ? message : hdVar.toString() : heVar.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        if (this.f450a != null) {
            printStream.println("Nested Exception: ");
            this.f450a.printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        if (this.f450a != null) {
            printWriter.println("Nested Exception: ");
            this.f450a.printStackTrace(printWriter);
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
        he heVar = this.f449a;
        if (heVar != null) {
            sb.append(heVar);
        }
        hd hdVar = this.f9007a;
        if (hdVar != null) {
            sb.append(hdVar);
        }
        if (this.f450a != null) {
            sb.append("\n  -- caused by: ");
            sb.append(this.f450a);
        }
        return sb.toString();
    }
}
