package rx.exceptions;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
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
        static String a = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        CompositeExceptionCausalChain() {
        }

        public String getMessage() {
            return a;
        }
    }

    private static abstract class a {
        /* access modifiers changed from: 0000 */
        public abstract Object a();

        /* access modifiers changed from: 0000 */
        public abstract void a(Object obj);

        private a() {
        }
    }

    private static class b extends a {
        private final PrintStream a;

        b(PrintStream printStream) {
            super();
            this.a = printStream;
        }

        /* access modifiers changed from: 0000 */
        public Object a() {
            return this.a;
        }

        /* access modifiers changed from: 0000 */
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    private static class c extends a {
        private final PrintWriter a;

        c(PrintWriter printWriter) {
            super();
            this.a = printWriter;
        }

        /* access modifiers changed from: 0000 */
        public Object a() {
            return this.a;
        }

        /* access modifiers changed from: 0000 */
        public void a(Object obj) {
            this.a.println(obj);
        }
    }

    public CompositeException(String str, Collection<? extends Throwable> collection) {
        this.c = null;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).a());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.a = Collections.unmodifiableList(arrayList);
        this.b = this.a.size() + " exceptions occurred. ";
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    public List<Throwable> a() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }

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
                    th = th.getCause();
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
        StringBuilder sb = new StringBuilder();
        sb.append(this).append("\n");
        for (StackTraceElement append : getStackTrace()) {
            sb.append("\tat ").append(append).append("\n");
        }
        int i = 1;
        Iterator it = this.a.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Throwable th = (Throwable) it.next();
                sb.append("  ComposedException ").append(i2).append(" :").append("\n");
                a(sb, th, "\t");
                i = i2 + 1;
            } else {
                synchronized (aVar.a()) {
                    aVar.a(sb.toString());
                }
                return;
            }
        }
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str).append(th).append("\n");
        for (StackTraceElement append : th.getStackTrace()) {
            sb.append("\t\tat ").append(append).append("\n");
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private final List<Throwable> a(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause == null) {
            return arrayList;
        }
        while (true) {
            arrayList.add(cause);
            if (cause.getCause() == null) {
                return arrayList;
            }
            cause = cause.getCause();
        }
    }
}
