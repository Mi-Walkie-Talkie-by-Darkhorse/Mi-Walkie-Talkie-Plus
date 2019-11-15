package com.xiaomi.smack;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.smack.packet.g;
import com.xiaomi.smack.packet.h;
import java.io.PrintStream;
import java.io.PrintWriter;

public class l extends Exception {
    private g a = null;
    private h b = null;
    private Throwable c = null;

    public l() {
    }

    public l(g gVar) {
        this.a = gVar;
    }

    public l(String str) {
        super(str);
    }

    public l(String str, Throwable th) {
        super(str);
        this.c = th;
    }

    public l(Throwable th) {
        this.c = th;
    }

    public Throwable a() {
        return this.c;
    }

    public String getMessage() {
        String message = super.getMessage();
        return (message != null || this.b == null) ? (message != null || this.a == null) ? message : this.a.toString() : this.b.toString();
    }

    public void printStackTrace() {
        ThrowableExtension.printStackTrace((Throwable) this, System.err);
    }

    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        if (this.c != null) {
            printStream.println("Nested Exception: ");
            ThrowableExtension.printStackTrace(this.c, printStream);
        }
    }

    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        if (this.c != null) {
            printWriter.println("Nested Exception: ");
            ThrowableExtension.printStackTrace(this.c, printWriter);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String message = super.getMessage();
        if (message != null) {
            sb.append(message).append(": ");
        }
        if (this.b != null) {
            sb.append(this.b);
        }
        if (this.a != null) {
            sb.append(this.a);
        }
        if (this.c != null) {
            sb.append("\n  -- caused by: ").append(this.c);
        }
        return sb.toString();
    }
}
