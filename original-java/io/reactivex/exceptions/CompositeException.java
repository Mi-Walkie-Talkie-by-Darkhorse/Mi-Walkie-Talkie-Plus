package io.reactivex.exceptions;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import io.reactivex.annotations.NonNull;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private final List<Throwable> a;
    private final String b;
    private Throwable c;

    static final class CompositeExceptionCausalChain extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        CompositeExceptionCausalChain() {
        }

        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    static abstract class a {
        /* access modifiers changed from: 0000 */
        public abstract void a(Object obj);

        a() {
        }
    }

    static final class b extends a {
        private final PrintStream a;

        b(PrintStream printStream) {
            this.a = printStream;
        }

        /* access modifiers changed from: 0000 */
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    static final class c extends a {
        private final PrintWriter a;

        c(PrintWriter printWriter) {
            this.a = printWriter;
        }

        /* access modifiers changed from: 0000 */
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    public CompositeException(@NonNull Throwable... thArr) {
        this((Iterable<? extends Throwable>) thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    public CompositeException(@NonNull Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).a());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            throw new IllegalArgumentException("errors is empty");
        }
        arrayList.addAll(linkedHashSet);
        this.a = Collections.unmodifiableList(arrayList);
        this.b = this.a.size() + " exceptions occurred. ";
    }

    @NonNull
    public List<Throwable> a() {
        return this.a;
    }

    @NonNull
    public String getMessage() {
        return this.b;
    }

    @NonNull
    public synchronized Throwable getCause() {
        if (this.c == null) {
            Throwable compositeExceptionCausalChain = new CompositeExceptionCausalChain();
            HashSet hashSet = new HashSet();
            Throwable th = compositeExceptionCausalChain;
            for (Throwable th2 : this.a) {
                if (!hashSet.contains(th2)) {
                    hashSet.add(th2);
                    Throwable th3 = th2;
                    for (Throwable th4 : a(th2)) {
                        if (hashSet.contains(th4)) {
                            th3 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th4);
                        }
                    }
                    try {
                        th.initCause(th3);
                    } catch (Throwable th5) {
                    }
                    th = b(th);
                }
            }
            this.c = compositeExceptionCausalChain;
        }
        return this.c;
    }

    public void printStackTrace() {
        ThrowableExtension.printStackTrace((Throwable) this, System.err);
    }

    public void printStackTrace(PrintStream printStream) {
        a((a) new b(printStream));
    }

    public void printStackTrace(PrintWriter printWriter) {
        a((a) new c(printWriter));
    }

    private void a(a aVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this).append(10);
        for (StackTraceElement append : getStackTrace()) {
            sb.append("\tat ").append(append).append(10);
        }
        int i = 1;
        Iterator it = this.a.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Throwable th = (Throwable) it.next();
                sb.append("  ComposedException ").append(i2).append(" :\n");
                a(sb, th, "\t");
                i = i2 + 1;
            } else {
                aVar.a(sb.toString());
                return;
            }
        }
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str).append(th).append(10);
        for (StackTraceElement append : th.getStackTrace()) {
            sb.append("\t\tat ").append(append).append(10);
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private List<Throwable> a(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause == null || cause == th) {
            return arrayList;
        }
        while (true) {
            arrayList.add(cause);
            Throwable cause2 = cause.getCause();
            if (cause2 != null && cause2 != cause) {
                cause = cause2;
            }
        }
        return arrayList;
    }

    private Throwable b(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || this.c == cause) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                return cause;
            }
            cause = cause2;
        }
    }
}
