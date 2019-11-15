package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.regex.Pattern;
import org.jboss.netty.util.DebugUtil;

public final class StackTraceSimplifier {
    private static final Pattern EXCLUDED_STACK_TRACE = Pattern.compile("^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$");
    private static final boolean SIMPLIFY_STACK_TRACE = (!DebugUtil.isDebugEnabled());

    public static void simplify(Throwable th) {
        if (SIMPLIFY_STACK_TRACE) {
            if (th.getCause() != null) {
                simplify(th.getCause());
            }
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length != 0 && !EXCLUDED_STACK_TRACE.matcher(stackTrace[0].getClassName()).matches()) {
                ArrayList arrayList = new ArrayList(stackTrace.length);
                arrayList.add(stackTrace[0]);
                for (int i = 1; i < stackTrace.length; i++) {
                    if (!EXCLUDED_STACK_TRACE.matcher(stackTrace[i].getClassName()).matches()) {
                        arrayList.add(stackTrace[i]);
                    }
                }
                th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[arrayList.size()]));
            }
        }
    }

    private StackTraceSimplifier() {
    }
}
