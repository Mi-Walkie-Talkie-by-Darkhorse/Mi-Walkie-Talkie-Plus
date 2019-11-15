package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy.Factory;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public final class CacheInterceptor implements Interceptor {
    final InternalCache cache;

    public CacheInterceptor(InternalCache internalCache) {
        this.cache = internalCache;
    }

    public Response intercept(Chain chain) throws IOException {
        Response response;
        Response response2 = null;
        if (this.cache != null) {
            response = this.cache.get(chain.request());
        } else {
            response = response2;
        }
        CacheStrategy cacheStrategy = new Factory(System.currentTimeMillis(), chain.request(), response).get();
        Request request = cacheStrategy.networkRequest;
        Response response3 = cacheStrategy.cacheResponse;
        if (this.cache != null) {
            this.cache.trackResponse(cacheStrategy);
        }
        if (response != null && response3 == null) {
            Util.closeQuietly((Closeable) response.body());
        }
        if (request == null && response3 == null) {
            return new Builder().request(chain.request()).protocol(Protocol.HTTP_1_1).code(HttpStatus.SC_GATEWAY_TIMEOUT).message("Unsatisfiable Request (only-if-cached)").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1).receivedResponseAtMillis(System.currentTimeMillis()).build();
        }
        if (request == null) {
            return response3.newBuilder().cacheResponse(stripBody(response3)).build();
        }
        try {
            response2 = chain.proceed(request);
            if (response3 != null) {
                if (response2.code() == 304) {
                    Response build = response3.newBuilder().headers(combine(response3.headers(), response2.headers())).sentRequestAtMillis(response2.sentRequestAtMillis()).receivedResponseAtMillis(response2.receivedResponseAtMillis()).cacheResponse(stripBody(response3)).networkResponse(stripBody(response2)).build();
                    response2.body().close();
                    this.cache.trackConditionalCacheHit();
                    this.cache.update(response3, build);
                    return build;
                }
                Util.closeQuietly((Closeable) response3.body());
            }
            Response build2 = response2.newBuilder().cacheResponse(stripBody(response3)).networkResponse(stripBody(response2)).build();
            if (this.cache == null) {
                return build2;
            }
            if (HttpHeaders.hasBody(build2) && CacheStrategy.isCacheable(build2, request)) {
                return cacheWritingResponse(this.cache.put(build2), build2);
            }
            if (!HttpMethod.invalidatesCache(request.method())) {
                return build2;
            }
            try {
                this.cache.remove(request);
                return build2;
            } catch (IOException e) {
                return build2;
            }
        } finally {
            if (response2 == null && response != null) {
                Util.closeQuietly((Closeable) response.body());
            }
        }
    }

    private static Response stripBody(Response response) {
        if (response == null || response.body() == null) {
            return response;
        }
        return response.newBuilder().body(null).build();
    }

    private Response cacheWritingResponse(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        Sink body = cacheRequest.body();
        if (body == null) {
            return response;
        }
        final BufferedSource source = response.body().source();
        final BufferedSink buffer = Okio.buffer(body);
        return response.newBuilder().body(new RealResponseBody(response.headers(), Okio.buffer((Source) new Source() {
            boolean cacheRequestClosed;

            public long read(Buffer buffer, long j) throws IOException {
                try {
                    long read = source.read(buffer, j);
                    if (read == -1) {
                        if (!this.cacheRequestClosed) {
                            this.cacheRequestClosed = true;
                            buffer.close();
                        }
                        return -1;
                    }
                    buffer.copyTo(buffer.buffer(), buffer.size() - read, read);
                    buffer.emitCompleteSegments();
                    return read;
                } catch (IOException e) {
                    if (!this.cacheRequestClosed) {
                        this.cacheRequestClosed = true;
                        cacheRequest.abort();
                    }
                    throw e;
                }
            }

            public Timeout timeout() {
                return source.timeout();
            }

            public void close() throws IOException {
                if (!this.cacheRequestClosed && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    this.cacheRequestClosed = true;
                    cacheRequest.abort();
                }
                source.close();
            }
        }))).build();
    }

    private static Headers combine(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if ((!Names.WARNING.equalsIgnoreCase(name) || !value.startsWith("1")) && (!isEndToEnd(name) || headers2.get(name) == null)) {
                Internal.instance.addLenient(builder, name, value);
            }
        }
        int size2 = headers2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String name2 = headers2.name(i2);
            if (!"Content-Length".equalsIgnoreCase(name2) && isEndToEnd(name2)) {
                Internal.instance.addLenient(builder, name2, headers2.value(i2));
            }
        }
        return builder.build();
    }

    static boolean isEndToEnd(String str) {
        if ("Connection".equalsIgnoreCase(str) || HTTP.CONN_KEEP_ALIVE.equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || Names.TE.equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) {
            return false;
        }
        return true;
    }
}
