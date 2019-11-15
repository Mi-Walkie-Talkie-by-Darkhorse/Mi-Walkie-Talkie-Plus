package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    @Nullable
    static AsyncTimeout head;
    private boolean inQueue;
    @Nullable
    private AsyncTimeout next;
    private long timeoutAt;

    private static final class Watchdog extends Thread {
        Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
            r0.timedOut();
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<okio.AsyncTimeout> r1 = okio.AsyncTimeout.class
                monitor-enter(r1)     // Catch:{ InterruptedException -> 0x000e }
                okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch:{ all -> 0x000b }
                if (r0 != 0) goto L_0x0010
                monitor-exit(r1)     // Catch:{ all -> 0x000b }
                goto L_0x0000
            L_0x000b:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x000b }
                throw r0     // Catch:{ InterruptedException -> 0x000e }
            L_0x000e:
                r0 = move-exception
                goto L_0x0000
            L_0x0010:
                okio.AsyncTimeout r2 = okio.AsyncTimeout.head     // Catch:{ all -> 0x000b }
                if (r0 != r2) goto L_0x0019
                r0 = 0
                okio.AsyncTimeout.head = r0     // Catch:{ all -> 0x000b }
                monitor-exit(r1)     // Catch:{ all -> 0x000b }
                return
            L_0x0019:
                monitor-exit(r1)     // Catch:{ all -> 0x000b }
                r0.timedOut()     // Catch:{ InterruptedException -> 0x000e }
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    public final void enter() {
        if (this.inQueue) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
        }
    }

    private static synchronized void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            if (head == null) {
                head = new AsyncTimeout();
                new Watchdog().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.timeoutAt = nanoTime + j;
            } else if (z) {
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            } else {
                throw new AssertionError();
            }
            long remainingNanos = asyncTimeout.remainingNanos(nanoTime);
            AsyncTimeout asyncTimeout2 = head;
            while (asyncTimeout2.next != null && remainingNanos >= asyncTimeout2.next.remainingNanos(nanoTime)) {
                asyncTimeout2 = asyncTimeout2.next;
            }
            asyncTimeout.next = asyncTimeout2.next;
            asyncTimeout2.next = asyncTimeout;
            if (asyncTimeout2 == head) {
                AsyncTimeout.class.notify();
            }
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    private static synchronized boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
        boolean z;
        synchronized (AsyncTimeout.class) {
            AsyncTimeout asyncTimeout2 = head;
            while (true) {
                if (asyncTimeout2 == null) {
                    z = true;
                    break;
                } else if (asyncTimeout2.next == asyncTimeout) {
                    asyncTimeout2.next = asyncTimeout.next;
                    asyncTimeout.next = null;
                    z = false;
                    break;
                } else {
                    asyncTimeout2 = asyncTimeout2.next;
                }
            }
        }
        return z;
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    /* access modifiers changed from: protected */
    public void timedOut() {
    }

    public final Sink sink(final Sink sink) {
        return new Sink() {
            public void write(Buffer buffer, long j) throws IOException {
                Util.checkOffsetAndCount(buffer.size, 0, j);
                long j2 = j;
                while (j2 > 0) {
                    Segment segment = buffer.head;
                    long j3 = 0;
                    while (true) {
                        if (j3 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                            break;
                        }
                        long j4 = ((long) (buffer.head.limit - buffer.head.pos)) + j3;
                        if (j4 >= j2) {
                            j3 = j2;
                            break;
                        } else {
                            segment = segment.next;
                            j3 = j4;
                        }
                    }
                    AsyncTimeout.this.enter();
                    try {
                        sink.write(buffer, j3);
                        j2 -= j3;
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    } catch (Throwable th) {
                        AsyncTimeout.this.exit(false);
                        throw th;
                    }
                }
            }

            public void flush() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    sink.flush();
                    AsyncTimeout.this.exit(true);
                } catch (IOException e) {
                    throw AsyncTimeout.this.exit(e);
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    sink.close();
                    AsyncTimeout.this.exit(true);
                } catch (IOException e) {
                    throw AsyncTimeout.this.exit(e);
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() {
            public long read(Buffer buffer, long j) throws IOException {
                AsyncTimeout.this.enter();
                try {
                    long read = source.read(buffer, j);
                    AsyncTimeout.this.exit(true);
                    return read;
                } catch (IOException e) {
                    throw AsyncTimeout.this.exit(e);
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            public void close() throws IOException {
                try {
                    source.close();
                    AsyncTimeout.this.exit(true);
                } catch (IOException e) {
                    throw AsyncTimeout.this.exit(e);
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    /* access modifiers changed from: 0000 */
    public final void exit(boolean z) throws IOException {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }

    /* access modifiers changed from: 0000 */
    public final IOException exit(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    /* access modifiers changed from: protected */
    public IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException(Values.TIMEOUT);
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Nullable
    static AsyncTimeout awaitTimeout() throws InterruptedException {
        AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            long nanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            if (head.next != null || System.nanoTime() - nanoTime < IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return head;
        }
        long remainingNanos = asyncTimeout.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            AsyncTimeout.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }
}
