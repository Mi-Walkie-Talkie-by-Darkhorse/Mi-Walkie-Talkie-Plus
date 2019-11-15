package com.loopj.android.http;

import android.content.Context;
import android.util.Log;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.lang.reflect.Field;
import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

/* compiled from: AsyncHttpClient */
public class b {
    private int a;
    private int b;
    private int c;
    private final DefaultHttpClient d;
    private final HttpContext e;
    private ExecutorService f;
    private final Map<Context, List<h>> g;
    /* access modifiers changed from: private */
    public final Map<String, String> h;
    private boolean i;

    /* compiled from: AsyncHttpClient */
    private static class a extends HttpEntityWrapper {
        InputStream a;
        PushbackInputStream b;
        GZIPInputStream c;

        public a(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public InputStream getContent() throws IOException {
            this.a = this.wrappedEntity.getContent();
            this.b = new PushbackInputStream(this.a, 2);
            if (!b.a(this.b)) {
                return this.b;
            }
            this.c = new GZIPInputStream(this.b);
            return this.c;
        }

        public long getContentLength() {
            if (this.wrappedEntity == null) {
                return 0;
            }
            return this.wrappedEntity.getContentLength();
        }

        public void consumeContent() throws IOException {
            b.a(this.a);
            b.a((InputStream) this.b);
            b.a((InputStream) this.c);
            super.consumeContent();
        }
    }

    public b() {
        this(false, 80, ServerPort.PORT_443);
    }

    public b(boolean z, int i2, int i3) {
        this(a(z, i2, i3));
    }

    private static SchemeRegistry a(boolean z, int i2, int i3) {
        SSLSocketFactory socketFactory;
        if (z) {
            Log.d("AsyncHttpClient", "Beware! Using the fix is insecure, as it doesn't verify SSL certificates.");
        }
        if (i2 < 1) {
            i2 = 80;
            Log.d("AsyncHttpClient", "Invalid HTTP port number specified, defaulting to 80");
        }
        if (i3 < 1) {
            i3 = ServerPort.PORT_443;
            Log.d("AsyncHttpClient", "Invalid HTTPS port number specified, defaulting to 443");
        }
        if (z) {
            socketFactory = f.b();
        } else {
            socketFactory = SSLSocketFactory.getSocketFactory();
        }
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), i2));
        schemeRegistry.register(new Scheme("https", socketFactory, i3));
        return schemeRegistry;
    }

    public b(SchemeRegistry schemeRegistry) {
        this.a = 10;
        this.b = 10000;
        this.c = 10000;
        this.i = true;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        ConnManagerParams.setTimeout(basicHttpParams, (long) this.b);
        ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(this.a));
        ConnManagerParams.setMaxTotalConnections(basicHttpParams, 10);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.c);
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.b);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
        this.f = a();
        this.g = Collections.synchronizedMap(new WeakHashMap());
        this.h = new HashMap();
        this.e = new SyncBasicHttpContext(new BasicHttpContext());
        this.d = new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        this.d.addRequestInterceptor(new HttpRequestInterceptor() {
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                if (!httpRequest.containsHeader("Accept-Encoding")) {
                    httpRequest.addHeader("Accept-Encoding", "gzip");
                }
                for (String str : b.this.h.keySet()) {
                    if (httpRequest.containsHeader(str)) {
                        Header firstHeader = httpRequest.getFirstHeader(str);
                        Log.d("AsyncHttpClient", String.format("Headers were overwritten! (%s | %s) overwrites (%s | %s)", new Object[]{str, b.this.h.get(str), firstHeader.getName(), firstHeader.getValue()}));
                        httpRequest.removeHeader(firstHeader);
                    }
                    httpRequest.addHeader(str, (String) b.this.h.get(str));
                }
            }
        });
        this.d.addResponseInterceptor(new HttpResponseInterceptor() {
            public void process(HttpResponse httpResponse, HttpContext httpContext) {
                HttpEntity entity = httpResponse.getEntity();
                if (entity != null) {
                    Header contentEncoding = entity.getContentEncoding();
                    if (contentEncoding != null) {
                        for (HeaderElement name : contentEncoding.getElements()) {
                            if (name.getName().equalsIgnoreCase("gzip")) {
                                httpResponse.setEntity(new a(entity));
                                return;
                            }
                        }
                    }
                }
            }
        });
        this.d.addRequestInterceptor(new HttpRequestInterceptor() {
            public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
                AuthState authState = (AuthState) httpContext.getAttribute(ClientContext.TARGET_AUTH_STATE);
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
                HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                if (authState.getAuthScheme() == null) {
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()));
                    if (credentials != null) {
                        authState.setAuthScheme(new BasicScheme());
                        authState.setCredentials(credentials);
                    }
                }
            }
        }, 0);
        this.d.setHttpRequestRetryHandler(new j(5, 1500));
    }

    public void a(ExecutorService executorService) {
        this.f = executorService;
    }

    /* access modifiers changed from: protected */
    public ExecutorService a() {
        return Executors.newCachedThreadPool();
    }

    public void a(String str) {
        HttpProtocolParams.setUserAgent(this.d.getParams(), str);
    }

    public void a(int i2) {
        if (i2 < 1) {
            i2 = 10;
        }
        this.a = i2;
        ConnManagerParams.setMaxConnectionsPerRoute(this.d.getParams(), new ConnPerRouteBean(this.a));
    }

    public void b(int i2) {
        if (i2 < 1000) {
            i2 = 10000;
        }
        c(i2);
        d(i2);
    }

    public void c(int i2) {
        if (i2 < 1000) {
            i2 = 10000;
        }
        this.b = i2;
        HttpParams params = this.d.getParams();
        ConnManagerParams.setTimeout(params, (long) this.b);
        HttpConnectionParams.setConnectionTimeout(params, this.b);
    }

    public void d(int i2) {
        if (i2 < 1000) {
            i2 = 10000;
        }
        this.c = i2;
        HttpConnectionParams.setSoTimeout(this.d.getParams(), this.c);
    }

    public void a(String str, int i2, String str2, String str3) {
        this.d.getCredentialsProvider().setCredentials(new AuthScope(str, i2), new UsernamePasswordCredentials(str2, str3));
        this.d.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost(str, i2));
    }

    public void a(int i2, int i3) {
        this.d.setHttpRequestRetryHandler(new j(i2, i3));
    }

    public h a(Context context, String str, Header[] headerArr, RequestParams requestParams, i iVar) {
        HttpHead httpHead = new HttpHead(a(this.i, str, requestParams));
        if (headerArr != null) {
            httpHead.setHeaders(headerArr);
        }
        return b(this.d, this.e, (HttpUriRequest) httpHead, (String) null, iVar, context);
    }

    public h b(Context context, String str, Header[] headerArr, RequestParams requestParams, i iVar) {
        HttpGet httpGet = new HttpGet(a(this.i, str, requestParams));
        if (headerArr != null) {
            httpGet.setHeaders(headerArr);
        }
        return b(this.d, this.e, (HttpUriRequest) httpGet, (String) null, iVar, context);
    }

    public h a(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, i iVar) {
        HttpEntityEnclosingRequestBase a2 = a((HttpEntityEnclosingRequestBase) new HttpPost(URI.create(str).normalize()), httpEntity);
        if (headerArr != null) {
            a2.setHeaders(headerArr);
        }
        return b(this.d, this.e, (HttpUriRequest) a2, str2, iVar, context);
    }

    public h b(Context context, String str, Header[] headerArr, HttpEntity httpEntity, String str2, i iVar) {
        HttpEntityEnclosingRequestBase a2 = a((HttpEntityEnclosingRequestBase) new HttpPut(URI.create(str).normalize()), httpEntity);
        if (headerArr != null) {
            a2.setHeaders(headerArr);
        }
        return b(this.d, this.e, (HttpUriRequest) a2, str2, iVar, context);
    }

    public h a(Context context, String str, Header[] headerArr, i iVar) {
        HttpDelete httpDelete = new HttpDelete(URI.create(str).normalize());
        if (headerArr != null) {
            httpDelete.setHeaders(headerArr);
        }
        return b(this.d, this.e, (HttpUriRequest) httpDelete, (String) null, iVar, context);
    }

    /* access modifiers changed from: protected */
    public c a(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, i iVar, Context context) {
        return new c(defaultHttpClient, httpContext, httpUriRequest, iVar);
    }

    /* access modifiers changed from: protected */
    public h b(DefaultHttpClient defaultHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, String str, i iVar, Context context) {
        if (httpUriRequest == null) {
            throw new IllegalArgumentException("HttpUriRequest must not be null");
        } else if (iVar == null) {
            throw new IllegalArgumentException("ResponseHandler must not be null");
        } else if (iVar.getUseSynchronousMode()) {
            throw new IllegalArgumentException("Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead.");
        } else {
            if (str != null) {
                if (!(httpUriRequest instanceof HttpEntityEnclosingRequestBase) || ((HttpEntityEnclosingRequestBase) httpUriRequest).getEntity() == null) {
                    httpUriRequest.setHeader("Content-Type", str);
                } else {
                    Log.w("AsyncHttpClient", "Passed contentType will be ignored because HttpEntity sets content type");
                }
            }
            iVar.setRequestHeaders(httpUriRequest.getAllHeaders());
            iVar.setRequestURI(httpUriRequest.getURI());
            c a2 = a(defaultHttpClient, httpContext, httpUriRequest, str, iVar, context);
            this.f.submit(a2);
            h hVar = new h(a2);
            if (context != null) {
                List list = (List) this.g.get(context);
                synchronized (this.g) {
                    if (list == null) {
                        list = Collections.synchronizedList(new LinkedList());
                        this.g.put(context, list);
                    }
                }
                if (iVar instanceof g) {
                    ((g) iVar).a(httpUriRequest);
                }
                list.add(hVar);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((h) it.next()).c()) {
                        it.remove();
                    }
                }
            }
            return hVar;
        }
    }

    public static String a(boolean z, String str, RequestParams requestParams) {
        String str2;
        if (str == null) {
            return null;
        }
        if (z) {
            str2 = str.replace(Token.SEPARATOR, "%20");
        } else {
            str2 = str;
        }
        if (requestParams == null) {
            return str2;
        }
        String trim = requestParams.b().trim();
        if (trim.equals("") || trim.equals("?")) {
            return str2;
        }
        return (str2 + (str2.contains("?") ? "&" : "?")) + trim;
    }

    public static boolean a(PushbackInputStream pushbackInputStream) throws IOException {
        boolean z = true;
        if (pushbackInputStream == null) {
            return false;
        }
        byte[] bArr = new byte[2];
        int read = pushbackInputStream.read(bArr);
        pushbackInputStream.unread(bArr);
        byte b2 = ((bArr[1] << 8) & StreamUtil.MNS_ENCODE_NONE) | (bArr[0] & 255);
        if (!(read == 2 && 35615 == b2)) {
            z = false;
        }
        return z;
    }

    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w("AsyncHttpClient", "Cannot close input stream", e2);
            }
        }
    }

    public static void a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                Log.w("AsyncHttpClient", "Cannot close output stream", e2);
            }
        }
    }

    private HttpEntityEnclosingRequestBase a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, HttpEntity httpEntity) {
        if (httpEntity != null) {
            httpEntityEnclosingRequestBase.setEntity(httpEntity);
        }
        return httpEntityEnclosingRequestBase;
    }

    public static void a(HttpEntity httpEntity) {
        Field field;
        if (httpEntity instanceof HttpEntityWrapper) {
            try {
                Field[] declaredFields = HttpEntityWrapper.class.getDeclaredFields();
                int length = declaredFields.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        field = null;
                        break;
                    }
                    field = declaredFields[i2];
                    if (field.getName().equals("wrappedEntity")) {
                        break;
                    }
                    i2++;
                }
                if (field != null) {
                    field.setAccessible(true);
                    HttpEntity httpEntity2 = (HttpEntity) field.get(httpEntity);
                    if (httpEntity2 != null) {
                        httpEntity2.consumeContent();
                    }
                }
            } catch (Throwable th) {
                Log.e("AsyncHttpClient", "wrappedEntity consume", th);
            }
        }
    }
}
