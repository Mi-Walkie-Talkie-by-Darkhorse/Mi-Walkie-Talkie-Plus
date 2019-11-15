package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.c;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class GlideException extends Exception {
    private static final StackTraceElement[] a = new StackTraceElement[0];
    private final List<Exception> b;
    private c c;
    private DataSource d;
    private Class<?> e;

    private static final class a implements Appendable {
        private final Appendable a;
        private boolean b = true;

        a(Appendable appendable) {
            this.a = appendable;
        }

        public Appendable append(char c) throws IOException {
            boolean z = false;
            if (this.b) {
                this.b = false;
                this.a.append("  ");
            }
            if (c == 10) {
                z = true;
            }
            this.b = z;
            this.a.append(c);
            return this;
        }

        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence a2 = a(charSequence);
            return append(a2, 0, a2.length());
        }

        public Appendable append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
            boolean z = false;
            CharSequence a2 = a(charSequence);
            if (this.b) {
                this.b = false;
                this.a.append("  ");
            }
            if (a2.length() > 0 && a2.charAt(i2 - 1) == 10) {
                z = true;
            }
            this.b = z;
            this.a.append(a2, i, i2);
            return this;
        }

        @NonNull
        private CharSequence a(@Nullable CharSequence charSequence) {
            if (charSequence == null) {
                return "";
            }
            return charSequence;
        }
    }

    public GlideException(String str) {
        this(str, Collections.emptyList());
    }

    public GlideException(String str, Exception exc) {
        this(str, Collections.singletonList(exc));
    }

    public GlideException(String str, List<Exception> list) {
        super(str);
        setStackTrace(a);
        this.b = list;
    }

    /* access modifiers changed from: 0000 */
    public void a(c cVar, DataSource dataSource) {
        a(cVar, dataSource, null);
    }

    /* access modifiers changed from: 0000 */
    public void a(c cVar, DataSource dataSource, Class<?> cls) {
        this.c = cVar;
        this.d = dataSource;
        this.e = cls;
    }

    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Exception> a() {
        return this.b;
    }

    public List<Exception> b() {
        ArrayList arrayList = new ArrayList();
        a((Exception) this, (List<Exception>) arrayList);
        return arrayList;
    }

    public void a(String str) {
        List b2 = b();
        int size = b2.size();
        for (int i = 0; i < size; i++) {
            Log.i(str, "Root cause (" + (i + 1) + " of " + size + ")", (Throwable) b2.get(i));
        }
    }

    private void a(Exception exc, List<Exception> list) {
        if (exc instanceof GlideException) {
            for (Exception a2 : ((GlideException) exc).a()) {
                a(a2, list);
            }
            return;
        }
        list.add(exc);
    }

    public void printStackTrace() {
        ThrowableExtension.printStackTrace((Throwable) this, System.err);
    }

    public void printStackTrace(PrintStream printStream) {
        a((Appendable) printStream);
    }

    public void printStackTrace(PrintWriter printWriter) {
        a((Appendable) printWriter);
    }

    private void a(Appendable appendable) {
        a((Exception) this, appendable);
        a(a(), (Appendable) new a(appendable));
    }

    public String getMessage() {
        return super.getMessage() + (this.e != null ? ", " + this.e : "") + (this.d != null ? ", " + this.d : "") + (this.c != null ? ", " + this.c : "");
    }

    private static void a(Exception exc, Appendable appendable) {
        try {
            appendable.append(exc.getClass().toString()).append(": ").append(exc.getMessage()).append(10);
        } catch (IOException e2) {
            throw new RuntimeException(exc);
        }
    }

    private static void a(List<Exception> list, Appendable appendable) {
        try {
            b(list, appendable);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void b(List<Exception> list, Appendable appendable) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            appendable.append("Cause (").append(String.valueOf(i + 1)).append(" of ").append(String.valueOf(size)).append("): ");
            Exception exc = (Exception) list.get(i);
            if (exc instanceof GlideException) {
                ((GlideException) exc).a(appendable);
            } else {
                a(exc, appendable);
            }
        }
    }
}
