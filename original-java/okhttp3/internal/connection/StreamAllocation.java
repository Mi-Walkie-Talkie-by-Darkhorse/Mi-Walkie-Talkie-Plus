package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;

public final class StreamAllocation {
    static final /* synthetic */ boolean $assertionsDisabled = (!StreamAllocation.class.desiredAssertionStatus());
    public final Address address;
    private final Object callStackTrace;
    private boolean canceled;
    private HttpCodec codec;
    private RealConnection connection;
    private final ConnectionPool connectionPool;
    private int refusedStreamCount;
    private boolean released;
    private Route route;
    private final RouteSelector routeSelector;

    public static final class StreamAllocationReference extends WeakReference<StreamAllocation> {
        public final Object callStackTrace;

        StreamAllocationReference(StreamAllocation streamAllocation, Object obj) {
            super(streamAllocation);
            this.callStackTrace = obj;
        }
    }

    public StreamAllocation(ConnectionPool connectionPool2, Address address2, Object obj) {
        this.connectionPool = connectionPool2;
        this.address = address2;
        this.routeSelector = new RouteSelector(address2, routeDatabase());
        this.callStackTrace = obj;
    }

    public HttpCodec newStream(OkHttpClient okHttpClient, boolean z) {
        try {
            HttpCodec newCodec = findHealthyConnection(okHttpClient.connectTimeoutMillis(), okHttpClient.readTimeoutMillis(), okHttpClient.writeTimeoutMillis(), okHttpClient.retryOnConnectionFailure(), z).newCodec(okHttpClient, this);
            synchronized (this.connectionPool) {
                this.codec = newCodec;
            }
            return newCodec;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    private RealConnection findHealthyConnection(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        RealConnection findConnection;
        while (true) {
            findConnection = findConnection(i, i2, i3, z);
            synchronized (this.connectionPool) {
                if (findConnection.successCount != 0) {
                    if (findConnection.isHealthy(z2)) {
                        break;
                    }
                    noNewStreams();
                } else {
                    break;
                }
            }
        }
        return findConnection;
    }

    private RealConnection findConnection(int i, int i2, int i3, boolean z) throws IOException {
        RealConnection realConnection;
        Socket socket = null;
        synchronized (this.connectionPool) {
            if (this.released) {
                throw new IllegalStateException("released");
            } else if (this.codec != null) {
                throw new IllegalStateException("codec != null");
            } else if (this.canceled) {
                throw new IOException("Canceled");
            } else {
                realConnection = this.connection;
                if (realConnection == null || realConnection.noNewStreams) {
                    Internal.instance.get(this.connectionPool, this.address, this, null);
                    if (this.connection != null) {
                        realConnection = this.connection;
                    } else {
                        Route route2 = this.route;
                        if (route2 == null) {
                            route2 = this.routeSelector.next();
                        }
                        synchronized (this.connectionPool) {
                            if (this.canceled) {
                                throw new IOException("Canceled");
                            }
                            Internal.instance.get(this.connectionPool, this.address, this, route2);
                            if (this.connection != null) {
                                realConnection = this.connection;
                            } else {
                                this.route = route2;
                                this.refusedStreamCount = 0;
                                RealConnection realConnection2 = new RealConnection(this.connectionPool, route2);
                                acquire(realConnection2);
                                realConnection2.connect(i, i2, i3, z);
                                routeDatabase().connected(realConnection2.route());
                                synchronized (this.connectionPool) {
                                    Internal.instance.put(this.connectionPool, realConnection2);
                                    if (realConnection2.isMultiplexed()) {
                                        Socket deduplicate = Internal.instance.deduplicate(this.connectionPool, this.address, this);
                                        realConnection = this.connection;
                                        socket = deduplicate;
                                    } else {
                                        realConnection = realConnection2;
                                    }
                                }
                                Util.closeQuietly(socket);
                            }
                        }
                    }
                }
            }
        }
        return realConnection;
    }

    public void streamFinished(boolean z, HttpCodec httpCodec) {
        Socket deallocate;
        synchronized (this.connectionPool) {
            if (httpCodec != null) {
                if (httpCodec == this.codec) {
                    if (!z) {
                        this.connection.successCount++;
                    }
                    deallocate = deallocate(z, false, true);
                }
            }
            throw new IllegalStateException("expected " + this.codec + " but was " + httpCodec);
        }
        Util.closeQuietly(deallocate);
    }

    public HttpCodec codec() {
        HttpCodec httpCodec;
        synchronized (this.connectionPool) {
            httpCodec = this.codec;
        }
        return httpCodec;
    }

    private RouteDatabase routeDatabase() {
        return Internal.instance.routeDatabase(this.connectionPool);
    }

    public synchronized RealConnection connection() {
        return this.connection;
    }

    public void release() {
        Socket deallocate;
        synchronized (this.connectionPool) {
            deallocate = deallocate(false, true, false);
        }
        Util.closeQuietly(deallocate);
    }

    public void noNewStreams() {
        Socket deallocate;
        synchronized (this.connectionPool) {
            deallocate = deallocate(true, false, false);
        }
        Util.closeQuietly(deallocate);
    }

    private Socket deallocate(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if ($assertionsDisabled || Thread.holdsLock(this.connectionPool)) {
            if (z3) {
                this.codec = null;
            }
            if (z2) {
                this.released = true;
            }
            if (this.connection == null) {
                return null;
            }
            if (z) {
                this.connection.noNewStreams = true;
            }
            if (this.codec != null) {
                return null;
            }
            if (!this.released && !this.connection.noNewStreams) {
                return null;
            }
            release(this.connection);
            if (this.connection.allocations.isEmpty()) {
                this.connection.idleAtNanos = System.nanoTime();
                if (Internal.instance.connectionBecameIdle(this.connectionPool, this.connection)) {
                    socket = this.connection.socket();
                    this.connection = null;
                    return socket;
                }
            }
            socket = null;
            this.connection = null;
            return socket;
        }
        throw new AssertionError();
    }

    public void cancel() {
        HttpCodec httpCodec;
        RealConnection realConnection;
        synchronized (this.connectionPool) {
            this.canceled = true;
            httpCodec = this.codec;
            realConnection = this.connection;
        }
        if (httpCodec != null) {
            httpCodec.cancel();
        } else if (realConnection != null) {
            realConnection.cancel();
        }
    }

    public void streamFailed(IOException iOException) {
        Socket deallocate;
        boolean z = false;
        synchronized (this.connectionPool) {
            if (iOException instanceof StreamResetException) {
                StreamResetException streamResetException = (StreamResetException) iOException;
                if (streamResetException.errorCode == ErrorCode.REFUSED_STREAM) {
                    this.refusedStreamCount++;
                }
                if (streamResetException.errorCode != ErrorCode.REFUSED_STREAM || this.refusedStreamCount > 1) {
                    this.route = null;
                }
                deallocate = deallocate(z, false, true);
            } else {
                if (this.connection != null && (!this.connection.isMultiplexed() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.connection.successCount == 0) {
                        if (!(this.route == null || iOException == null)) {
                            this.routeSelector.connectFailed(this.route, iOException);
                        }
                        this.route = null;
                    }
                }
                deallocate = deallocate(z, false, true);
            }
            z = true;
            deallocate = deallocate(z, false, true);
        }
        Util.closeQuietly(deallocate);
    }

    public void acquire(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this.connectionPool)) {
            throw new AssertionError();
        } else if (this.connection != null) {
            throw new IllegalStateException();
        } else {
            this.connection = realConnection;
            realConnection.allocations.add(new StreamAllocationReference(this, this.callStackTrace));
        }
    }

    private void release(RealConnection realConnection) {
        int size = realConnection.allocations.size();
        for (int i = 0; i < size; i++) {
            if (((Reference) realConnection.allocations.get(i)).get() == this) {
                realConnection.allocations.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public Socket releaseAndAcquire(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this.connectionPool)) {
            throw new AssertionError();
        } else if (this.codec == null && this.connection.allocations.size() == 1) {
            Reference reference = (Reference) this.connection.allocations.get(0);
            Socket deallocate = deallocate(true, false, false);
            this.connection = realConnection;
            realConnection.allocations.add(reference);
            return deallocate;
        } else {
            throw new IllegalStateException();
        }
    }

    public boolean hasMoreRoutes() {
        return this.route != null || this.routeSelector.hasNext();
    }

    public String toString() {
        RealConnection connection2 = connection();
        return connection2 != null ? connection2.toString() : this.address.toString();
    }
}
