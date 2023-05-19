package com.xiaomi.infra.galaxy.fds.android;

import android.util.Log;
import com.google.gson.Gson;
import com.xiaomi.infra.galaxy.fds.android.auth.GalaxyFDSCredential;
import com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException;
import com.xiaomi.infra.galaxy.fds.android.model.FDSObject;
import com.xiaomi.infra.galaxy.fds.android.model.InitMultipartUploadResult;
import com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata;
import com.xiaomi.infra.galaxy.fds.android.model.ProgressListener;
import com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult;
import com.xiaomi.infra.galaxy.fds.android.model.ThumbParam;
import com.xiaomi.infra.galaxy.fds.android.model.UploadPartResult;
import com.xiaomi.infra.galaxy.fds.android.model.UploadPartResultList;
import com.xiaomi.infra.galaxy.fds.android.model.UserParam;
import com.xiaomi.infra.galaxy.fds.android.util.Args;
import com.xiaomi.infra.galaxy.fds.android.util.Consts;
import com.xiaomi.infra.galaxy.fds.android.util.ObjectInputStream;
import com.xiaomi.infra.galaxy.fds.android.util.RequestFactory;
import com.xiaomi.infra.galaxy.fds.android.util.Util;
import com.xiaomi.infra.galaxy.fds.model.HttpMethod;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* loaded from: classes2.dex */
public class GalaxyFDSClientImpl implements GalaxyFDSClient {
    private static final String HTTPS_SCHEME = "https";
    private static final String HTTP_SCHEME = "http";
    private static final String LOG_TAG = "GalaxyFDSClientImpl";
    private static final boolean TEST_MODE;
    private final FDSClientConfiguration config;
    private final HttpClient httpClient;
    private ThreadPoolExecutor threadPoolExecutor;

    static {
        String property = System.getProperty("java.runtime.name");
        if (property != null && property.equals("android runtime")) {
            TEST_MODE = false;
        } else {
            TEST_MODE = true;
        }
    }

    public GalaxyFDSClientImpl(FDSClientConfiguration fDSClientConfiguration) {
        this.config = fDSClientConfiguration;
        this.httpClient = createHttpClient(fDSClientConfiguration);
        this.threadPoolExecutor = new ThreadPoolExecutor(fDSClientConfiguration.getThreadPoolCoreSize(), fDSClientConfiguration.getThreadPoolMaxSize(), fDSClientConfiguration.getThreadPoolKeepAliveSecs(), TimeUnit.SECONDS, new ArrayBlockingQueue(fDSClientConfiguration.getWorkQueueCapacity(), true), new ThreadFactory() { // from class: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "FDS-multipart-upload-thread");
            }
        });
    }

    private void abortMultipartUpload(String str, String str2, String str3) throws GalaxyFDSClientException {
        String str4 = this.config.getUploadBaseUri() + "/" + str + "/" + str2 + "?uploadId=" + str3;
        InputStream inputStream = null;
        try {
            try {
                HttpResponse execute = this.httpClient.execute(RequestFactory.createRequest(str4, this.config.getCredential(), HttpMethod.DELETE, null));
                inputStream = execute.getEntity().getContent();
                if (execute.getStatusLine().getStatusCode() == 200) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                    return;
                }
                throw new GalaxyFDSClientException("Unable to upload object[" + str + "/" + str2 + "] to URI :" + str4 + ". Fail to abort multipart upload: " + execute.getStatusLine().toString());
            } catch (IOException e) {
                throw new GalaxyFDSClientException("Fail to abort multipart upload. URI:" + str4, e);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private PutObjectResult completeMultipartUpload(String str, String str2, String str3, ObjectMetadata objectMetadata, UploadPartResultList uploadPartResultList, List<UserParam> list) throws GalaxyFDSClientException {
        HashMap hashMap;
        StringBuilder sb = new StringBuilder();
        sb.append(this.config.getUploadBaseUri() + "/" + str2 + "/" + str3 + "?uploadId=" + str);
        if (list != null) {
            for (UserParam userParam : list) {
                sb.append('&');
                sb.append(userParam.toString());
            }
        }
        String sb2 = sb.toString();
        InputStream inputStream = null;
        try {
            if (objectMetadata != null) {
                try {
                    hashMap = new HashMap();
                    for (Map.Entry<String, String> entry : objectMetadata.getAllMetadata().entrySet()) {
                        hashMap.put(entry.getKey().toLowerCase(), entry.getValue());
                    }
                } catch (IOException e) {
                    throw new GalaxyFDSClientException("Fail to complete multipart upload. URI:" + sb2, e);
                }
            } else {
                hashMap = null;
            }
            HttpPut createRequest = RequestFactory.createRequest(sb2, this.config.getCredential(), HttpMethod.PUT, hashMap);
            createRequest.setEntity(new StringEntity(new Gson().toJson(uploadPartResultList)));
            HttpResponse execute = this.httpClient.execute(createRequest);
            InputStream content = execute.getEntity().getContent();
            if (execute.getStatusLine().getStatusCode() == 200) {
                PutObjectResult putObjectResult = (PutObjectResult) new Gson().fromJson((Reader) new InputStreamReader(content), (Class<Object>) PutObjectResult.class);
                if (putObjectResult != null && putObjectResult.getAccessKeyId() != null && putObjectResult.getSignature() != null && putObjectResult.getExpires() != 0) {
                    putObjectResult.setFdsServiceBaseUri(this.config.getBaseUri());
                    putObjectResult.setCdnServiceBaseUri(this.config.getCdnBaseUri());
                    if (content != null) {
                        try {
                            content.close();
                        } catch (IOException unused) {
                        }
                    }
                    return putObjectResult;
                }
                throw new GalaxyFDSClientException("Fail to parse the result of completing multipart upload. bucket name:" + str2 + ", object name:" + str3 + ", upload ID:" + str);
            }
            throw new GalaxyFDSClientException("Unable to upload object[" + str2 + "/" + str3 + "] to URI :" + sb2 + ". Fail to complete multipart upload: " + execute.getStatusLine().toString());
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private HttpClient createHttpClient(FDSClientConfiguration fDSClientConfiguration) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, fDSClientConfiguration.getConnectionTimeoutMs());
        HttpConnectionParams.setSoTimeout(basicHttpParams, fDSClientConfiguration.getSocketTimeoutMs());
        HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, true);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        int i = fDSClientConfiguration.getSocketBufferSizeHints()[0];
        int i2 = fDSClientConfiguration.getSocketBufferSizeHints()[1];
        if (i > 0 || i2 > 0) {
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, Math.max(i, i2));
        }
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(HTTP_SCHEME, PlainSocketFactory.getSocketFactory(), 80));
        if (fDSClientConfiguration.isHttpsEnabled()) {
            SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
            socketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            schemeRegistry.register(new Scheme(HTTPS_SCHEME, socketFactory, 443));
        }
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    private InitMultipartUploadResult initMultipartUpload(String str, String str2, long j) throws GalaxyFDSClientException {
        StringBuilder sb = new StringBuilder();
        sb.append(this.config.getUploadBaseUri());
        sb.append("/");
        sb.append(str);
        sb.append("/");
        sb.append(str2 == null ? "" : str2);
        sb.append("?uploads");
        String sb2 = sb.toString();
        InputStream inputStream = null;
        try {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("x-xiaomi-estimated-object-size", Long.toString(j));
                HttpResponse execute = this.httpClient.execute(RequestFactory.createRequest(sb2, this.config.getCredential(), str2 == null ? HttpMethod.POST : HttpMethod.PUT, hashMap));
                InputStream content = execute.getEntity().getContent();
                if (execute.getStatusLine().getStatusCode() == 200) {
                    InitMultipartUploadResult initMultipartUploadResult = (InitMultipartUploadResult) new Gson().fromJson((Reader) new InputStreamReader(content), (Class<Object>) InitMultipartUploadResult.class);
                    if (initMultipartUploadResult != null && initMultipartUploadResult.getUploadId() != null && initMultipartUploadResult.getObjectName() != null && initMultipartUploadResult.getBucketName() != null) {
                        if (content != null) {
                            try {
                                content.close();
                            } catch (IOException unused) {
                            }
                        }
                        return initMultipartUploadResult;
                    }
                    throw new GalaxyFDSClientException("Fail to parse the result of init multipart upload. bucket name:" + str + ", object name:" + str2);
                }
                throw new GalaxyFDSClientException("Unable to upload object[" + str + "/" + str2 + "] to URI :" + sb2 + ". Fail to initiate multipart upload: " + execute.getStatusLine().toString());
            } catch (IOException e) {
                throw new GalaxyFDSClientException("Fail to initiate multipart upload. URI:" + sb2, e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private boolean isGetThumbnail(List<UserParam> list) {
        if (list != null) {
            for (UserParam userParam : list) {
                if (userParam instanceof ThumbParam) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x010e, code lost:
        throw new com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException("Fail to parse the result of uploading part. bucket name:" + r20 + ", object name:" + r21 + ", upload ID:" + r19);
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017b A[Catch: all -> 0x016c, TryCatch #7 {all -> 0x016c, blocks: (B:17:0x008b, B:18:0x00a2, B:20:0x00bc, B:22:0x00d0, B:24:0x00d6, B:31:0x00e8, B:32:0x010e, B:39:0x0153, B:40:0x0169, B:48:0x0173, B:50:0x017b, B:52:0x017f, B:56:0x01c6, B:33:0x010f, B:34:0x014d), top: B:64:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UploadPartResult uploadPart(String str, String str2, String str3, int i, ObjectInputStream objectInputStream, long j) throws GalaxyFDSClientException {
        String str4 = this.config.getUploadBaseUri() + "/" + str2 + "/" + str3 + "?uploadId=" + str + "&partNumber=" + i;
        byte[] bArr = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) j);
        long j2 = j;
        while (j2 != 0) {
            try {
                int read = objectInputStream.read(bArr, 0, Math.min(4096, (int) j2));
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
                j2 -= read;
            } catch (IOException e) {
                throw new GalaxyFDSClientException("Fail to read data from input stream, size:" + j, e);
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
        }
        Map map = null;
        InputStream inputStream = null;
        int i2 = 0;
        while (true) {
            try {
                try {
                    try {
                        HttpPut createRequest = RequestFactory.createRequest(str4, this.config.getCredential(), HttpMethod.PUT, map);
                        createRequest.setEntity(new ByteArrayEntity(byteArray));
                        try {
                            HttpResponse execute = this.httpClient.execute(createRequest);
                            inputStream = execute.getEntity().getContent();
                            try {
                                if (execute.getStatusLine().getStatusCode() == 200) {
                                    UploadPartResult uploadPartResult = (UploadPartResult) new Gson().fromJson((Reader) new InputStreamReader(inputStream), (Class<Object>) UploadPartResult.class);
                                    if (uploadPartResult == null || uploadPartResult.getEtag() == null) {
                                        break;
                                    } else if (uploadPartResult.getPartSize() != 0) {
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException unused2) {
                                            }
                                        }
                                        return uploadPartResult;
                                    }
                                } else {
                                    throw new GalaxyFDSClientException("Unable to upload object[" + str2 + "/" + str3 + "] to URI :" + str4 + ". Fail to upload part " + i + ": " + execute.getStatusLine().toString());
                                }
                            } catch (IOException e2) {
                                e = e2;
                                throw new GalaxyFDSClientException("Fail to put part. URI:" + str4, e);
                            }
                        } catch (IOException e3) {
                            e = e3;
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (GalaxyFDSClientException e4) {
                    e = e4;
                    i2++;
                    if (i2 >= this.config.getMaxRetryTimes()) {
                    }
                }
            } catch (GalaxyFDSClientException e5) {
                e = e5;
                i2++;
                if (i2 >= this.config.getMaxRetryTimes()) {
                    if (!TEST_MODE) {
                        Log.i(LOG_TAG, "Retry the upload of object:" + str3 + " bucket" + Constants.COLON_SEPARATOR + str2 + " upload id:" + str + " part number:" + i + " cause:" + Util.getStackTrace(e));
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    map = null;
                } else {
                    throw e;
                }
            }
            map = null;
        }
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public boolean doesObjectExist(String str, String str2) throws GalaxyFDSClientException {
        HttpResponse execute;
        Args.notNull(str, "bucket name");
        Args.notEmpty(str, "bucket name");
        Args.notNull(str2, "object name");
        Args.notEmpty(str2, "object name");
        String str3 = this.config.getBaseUri() + "/" + str + "/" + str2;
        try {
            int statusCode = this.httpClient.execute(RequestFactory.createRequest(str3, this.config.getCredential(), HttpMethod.HEAD, null)).getStatusLine().getStatusCode();
            if (statusCode == 200) {
                return true;
            }
            if (statusCode == 404) {
                return false;
            }
            throw new GalaxyFDSClientException("Unable to head object[" + str + "/" + str2 + "] from URI :" + str3 + ". Cause:" + execute.getStatusLine().toString());
        } catch (IOException e) {
            throw new GalaxyFDSClientException("Unable to head object[" + str + "/" + str2 + "] from URI :" + str3 + " Exception:" + e.getMessage(), e);
        }
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public FDSObject getObject(String str, String str2) throws GalaxyFDSClientException {
        return getObject(str, str2, 0L, (List<UserParam>) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, File file) throws GalaxyFDSClientException {
        return putObject(str, str2, file, (List<UserParam>) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public FDSObject getObject(String str, String str2, long j, List<UserParam> list) throws GalaxyFDSClientException {
        return getObject(str, str2, j, list, (ProgressListener) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, File file, List<UserParam> list) throws GalaxyFDSClientException {
        return putObject(str, str2, file, list, (ProgressListener) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public FDSObject getObject(String str, String str2, long j, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        Args.notNull(str, "bucket name");
        Args.notEmpty(str, "bucket name");
        Args.notNull(str2, "object name");
        Args.notEmpty(str2, "object name");
        StringBuilder sb = new StringBuilder();
        sb.append(this.config.getDownloadBaseUri());
        sb.append("/" + str + "/" + str2);
        return getObject(sb.toString(), j, list, progressListener);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        Args.notNull(file, "file");
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            ObjectMetadata objectMetadata = new ObjectMetadata();
            objectMetadata.setContentLength(file.length());
            objectMetadata.setContentType(Util.getMimeType(file));
            objectMetadata.setLastModified(new Date(file.lastModified()));
            return putObject(str, str2, bufferedInputStream, objectMetadata, list, progressListener);
        } catch (FileNotFoundException e) {
            throw new GalaxyFDSClientException("Unable to find the file to be uploaded:" + file.getAbsolutePath(), e);
        }
    }

    @Deprecated
    public GalaxyFDSClientImpl(String str, GalaxyFDSCredential galaxyFDSCredential, FDSClientConfiguration fDSClientConfiguration) {
        this.config = fDSClientConfiguration;
        fDSClientConfiguration.setCredential(galaxyFDSCredential);
        this.httpClient = createHttpClient(fDSClientConfiguration);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    @Deprecated
    public FDSObject getObject(String str, String str2, long j, List<UserParam> list, ProgressListener progressListener, boolean z) throws GalaxyFDSClientException {
        return getObject(str, str2, j, list, progressListener);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) throws GalaxyFDSClientException {
        return putObject(str, str2, inputStream, objectMetadata, (List<UserParam>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0156 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Throwable, com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Throwable, com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FDSObject getObject(String str, long j, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        InputStream inputStream;
        ?? r3;
        HttpResponse execute;
        String str2 = str;
        Args.notNull(str2, "URI");
        Args.notNegative(j, "offset in content");
        if (list != null) {
            StringBuilder sb = new StringBuilder(str2);
            for (UserParam userParam : list) {
                if (sb.indexOf("?") == -1) {
                    sb.append('?');
                } else {
                    sb.append('&');
                }
                sb.append(userParam.toString());
            }
            str2 = sb.toString();
        }
        String str3 = str2;
        try {
            String path = new URI(str3).getPath();
            int indexOf = path.indexOf(47, 1);
            if (indexOf != -1) {
                String substring = path.substring(0, indexOf);
                String substring2 = path.substring(indexOf + 1);
                InputStream inputStream2 = null;
                try {
                    HashMap hashMap = new HashMap();
                    if (j > 0 && !isGetThumbnail(list)) {
                        hashMap.put("Range", "bytes=" + j + Constants.ACCEPT_TIME_SEPARATOR_SERVER);
                    }
                    execute = this.httpClient.execute(RequestFactory.createRequest(str3, this.config.getCredential(), HttpMethod.GET, hashMap));
                    inputStream = execute.getEntity().getContent();
                } catch (IOException e) {
                    e = e;
                    r3 = 0;
                } catch (Throwable th) {
                    th = th;
                    inputStream = null;
                }
                try {
                    int statusCode = execute.getStatusLine().getStatusCode();
                    if (statusCode != 200 && statusCode != 206) {
                        r3 = new GalaxyFDSClientException("Unable to get object[" + substring + "/" + substring2 + "] from URI :" + str3 + ". Cause:" + execute.getStatusLine().toString());
                        try {
                            throw r3;
                        } catch (IOException e2) {
                            e = e2;
                            inputStream2 = inputStream;
                            r3 = r3;
                            try {
                                ?? galaxyFDSClientException = new GalaxyFDSClientException("Unable to get object[" + substring + "/" + substring2 + "] from URI :" + str3 + " Exception:" + e.getMessage(), e);
                                try {
                                    throw galaxyFDSClientException;
                                } catch (Throwable th2) {
                                    th = th2;
                                    InputStream inputStream3 = inputStream2;
                                    inputStream2 = galaxyFDSClientException;
                                    inputStream = inputStream3;
                                    if (inputStream2 != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = inputStream2;
                                inputStream2 = r3;
                                if (inputStream2 != null && inputStream != null) {
                                    inputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            inputStream2 = r3;
                            if (inputStream2 != null) {
                            }
                            throw th;
                        }
                    }
                    FDSObject fDSObject = new FDSObject(substring, substring2);
                    ObjectMetadata parseObjectMetadata = ObjectMetadata.parseObjectMetadata(execute.getAllHeaders());
                    fDSObject.setObjectContent(new ObjectInputStream(inputStream, parseObjectMetadata, progressListener));
                    fDSObject.setObjectMetadata(parseObjectMetadata);
                    return fDSObject;
                } catch (IOException e3) {
                    e = e3;
                    r3 = 0;
                } catch (Throwable th5) {
                    th = th5;
                    if (inputStream2 != null) {
                    }
                    throw th;
                }
            } else {
                throw new URISyntaxException(str3, "not a valid object URI");
            }
        } catch (URISyntaxException e4) {
            throw new GalaxyFDSClientException("Invalid URI, can't parse bucket nameand object name form it:" + str3, e4);
        }
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list) throws GalaxyFDSClientException {
        return putObject(str, str2, inputStream, objectMetadata, list, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fa  */
    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PutObjectResult putObject(final String str, String str2, InputStream inputStream, final ObjectMetadata objectMetadata, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        String str3;
        final String str4;
        GalaxyFDSClientImpl galaxyFDSClientImpl = this;
        Args.notNull(str, "bucket name");
        Args.notEmpty(str, "bucket name");
        Args.notNull(inputStream, "input stream");
        Args.notNull(objectMetadata, "metadata");
        long contentLength = objectMetadata.getContentLength();
        Args.notNegative(contentLength, "content length");
        if (objectMetadata.getContentType() == null) {
            objectMetadata.setContentType(Consts.APPLICATION_OCTET_STREAM);
        }
        String str5 = null;
        ObjectInputStream objectInputStream = new ObjectInputStream(inputStream, objectMetadata, progressListener);
        try {
            try {
                str3 = str2;
                try {
                    InitMultipartUploadResult initMultipartUpload = galaxyFDSClientImpl.initMultipartUpload(str, str3, objectMetadata.getContentLength());
                    str4 = initMultipartUpload.getObjectName();
                    try {
                        final String uploadId = initMultipartUpload.getUploadId();
                        try {
                            int uploadPartSize = galaxyFDSClientImpl.config.getUploadPartSize();
                            int i = ((int) ((uploadPartSize + contentLength) - 1)) / uploadPartSize;
                            ArrayList arrayList = new ArrayList(i);
                            ArrayList arrayList2 = new ArrayList(i);
                            int i2 = (int) contentLength;
                            int i3 = 1;
                            while (i3 <= i) {
                                final int min = Math.min(uploadPartSize, i2);
                                final byte[] bArr = new byte[min];
                                objectInputStream.read(bArr, 0, min);
                                ThreadPoolExecutor threadPoolExecutor = galaxyFDSClientImpl.threadPoolExecutor;
                                final int i4 = i3;
                                ArrayList arrayList3 = arrayList;
                                arrayList3.add(threadPoolExecutor.submit(new Callable<UploadPartResult>() { // from class: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.2
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // java.util.concurrent.Callable
                                    public UploadPartResult call() throws Exception {
                                        return GalaxyFDSClientImpl.this.uploadPart(uploadId, str, str4, i4, new ObjectInputStream(new ByteArrayInputStream(bArr), objectMetadata, null), min);
                                    }
                                }));
                                i2 -= min;
                                i3 = i4 + 1;
                                uploadPartSize = uploadPartSize;
                                arrayList = arrayList3;
                                i = i;
                                arrayList2 = arrayList2;
                                galaxyFDSClientImpl = this;
                            }
                            ArrayList arrayList4 = arrayList2;
                            ArrayList arrayList5 = arrayList;
                            int i5 = i;
                            for (int i6 = 1; i6 <= i5; i6++) {
                                arrayList4.add(((Future) arrayList5.get(i6 - 1)).get());
                            }
                            UploadPartResultList uploadPartResultList = new UploadPartResultList();
                            uploadPartResultList.setUploadPartResultList(arrayList4);
                            PutObjectResult completeMultipartUpload = completeMultipartUpload(uploadId, str, str4, objectMetadata, uploadPartResultList, list);
                            try {
                                objectInputStream.close();
                            } catch (IOException unused) {
                            }
                            return completeMultipartUpload;
                        } catch (Exception e) {
                            e = e;
                            str5 = uploadId;
                            if (str5 == null) {
                            }
                            throw new GalaxyFDSClientException(e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str4 = str3;
                    if (str5 == null) {
                        try {
                            abortMultipartUpload(str, str4, str5);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                objectInputStream.close();
                            } catch (IOException unused2) {
                            }
                            throw th;
                        }
                    }
                    throw new GalaxyFDSClientException(e);
                }
            } catch (Throwable th2) {
                th = th2;
                objectInputStream.close();
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            str3 = str2;
        }
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, File file) throws GalaxyFDSClientException {
        return putObject(str, file, (List<UserParam>) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, File file, List<UserParam> list) throws GalaxyFDSClientException {
        return putObject(str, file, list, (ProgressListener) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public ObjectMetadata getObject(String str, String str2, File file) throws GalaxyFDSClientException {
        return getObject(str, str2, file, (List<UserParam>) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        return putObject(str, (String) null, file, list, progressListener);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list) throws GalaxyFDSClientException {
        return getObject(str, str2, file, list, (ProgressListener) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata) throws GalaxyFDSClientException {
        return putObject(str, inputStream, objectMetadata, (List<UserParam>) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        long length;
        Args.notNull(file, "Destination file");
        boolean isGetThumbnail = isGetThumbnail(list);
        int i = 0;
        while (true) {
            boolean z = (i == 0 || isGetThumbnail) ? false : true;
            if (z) {
                try {
                    length = file.length();
                } catch (GalaxyFDSClientException e) {
                    i++;
                    if (i < this.config.getMaxRetryTimes()) {
                        if (!TEST_MODE) {
                            Log.i(LOG_TAG, "Retry the download of object:" + str2 + " bucket" + Constants.COLON_SEPARATOR + str + " to file: " + file.getAbsolutePath() + " cause:" + Util.getStackTrace(e));
                        }
                    } else {
                        throw e;
                    }
                }
            } else {
                length = 0;
            }
            FDSObject object = getObject(str, str2, length, list, progressListener);
            Util.downloadObjectToFile(object, file, z);
            return object.getObjectMetadata();
        }
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list) throws GalaxyFDSClientException {
        return putObject(str, inputStream, objectMetadata, list, (ProgressListener) null);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        return putObject(str, null, inputStream, objectMetadata, list, progressListener);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    @Deprecated
    public ObjectMetadata getObject(String str, String str2, File file, List<UserParam> list, ProgressListener progressListener, boolean z) throws GalaxyFDSClientException {
        return getObject(str, str2, file, list, progressListener);
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public ObjectMetadata getObject(String str, File file, List<UserParam> list, ProgressListener progressListener) throws GalaxyFDSClientException {
        long length;
        Args.notNull(file, "Destination file");
        boolean isGetThumbnail = isGetThumbnail(list);
        int i = 0;
        while (true) {
            boolean z = (i == 0 || isGetThumbnail) ? false : true;
            if (z) {
                try {
                    length = file.length();
                } catch (GalaxyFDSClientException e) {
                    i++;
                    if (i < this.config.getMaxRetryTimes()) {
                        if (!TEST_MODE) {
                            Log.i(LOG_TAG, "Retry the download of object:" + str + " to file: " + file.getAbsolutePath() + " cause:" + Util.getStackTrace(e));
                        }
                    } else {
                        throw e;
                    }
                }
            } else {
                length = 0;
            }
            FDSObject object = getObject(str, length, list, progressListener);
            Util.downloadObjectToFile(object, file, z);
            return object.getObjectMetadata();
        }
    }
}
