package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class ForwardingTimeout extends Timeout {
    private Timeout delegate;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = timeout;
    }

    public final Timeout delegate() {
        return this.delegate;
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = timeout;
        return this;
    }

    public Timeout timeout(long j, TimeUnit timeUnit) {
        return this.delegate.timeout(j, timeUnit);
    }

    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }

    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    public Timeout deadlineNanoTime(long j) {
        return this.delegate.deadlineNanoTime(j);
    }

    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    public void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }
}
