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
import com.xiaomi.infra.galaxy.fds.android.model.UserParam;
import com.xiaomi.infra.galaxy.fds.android.util.Args;
import com.xiaomi.infra.galaxy.fds.android.util.RequestFactory;
import com.xiaomi.infra.galaxy.fds.android.util.Util;
import com.xiaomi.infra.galaxy.fds.model.HttpMethod;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
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
        if (property == null || !property.equals("android runtime")) {
            TEST_MODE = true;
        } else {
            TEST_MODE = false;
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
                if (execute.getStatusLine().getStatusCode() != 200) {
                    throw new GalaxyFDSClientException("Unable to upload object[" + str + "/" + str2 + "] to URI :" + str4 + ". Fail to abort multipart upload: " + execute.getStatusLine().toString());
                } else if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult completeMultipartUpload(java.lang.String r6, java.lang.String r7, java.lang.String r8, com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata r9, com.xiaomi.infra.galaxy.fds.android.model.UploadPartResultList r10, java.util.List<com.xiaomi.infra.galaxy.fds.android.model.UserParam> r11) throws com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException {
        /*
            Method dump skipped, instructions count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.completeMultipartUpload(java.lang.String, java.lang.String, java.lang.String, com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata, com.xiaomi.infra.galaxy.fds.android.model.UploadPartResultList, java.util.List):com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult");
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
                inputStream = execute.getEntity().getContent();
                if (execute.getStatusLine().getStatusCode() == 200) {
                    InitMultipartUploadResult initMultipartUploadResult = (InitMultipartUploadResult) new Gson().fromJson((Reader) new InputStreamReader(inputStream), (Class<Object>) InitMultipartUploadResult.class);
                    if (initMultipartUploadResult != null && initMultipartUploadResult.getUploadId() != null && initMultipartUploadResult.getObjectName() != null && initMultipartUploadResult.getBucketName() != null) {
                        return initMultipartUploadResult;
                    }
                    throw new GalaxyFDSClientException("Fail to parse the result of init multipart upload. bucket name:" + str + ", object name:" + str2);
                }
                throw new GalaxyFDSClientException("Unable to upload object[" + str + "/" + str2 + "] to URI :" + sb2 + ". Fail to initiate multipart upload: " + execute.getStatusLine().toString());
            } catch (IOException e) {
                throw new GalaxyFDSClientException("Fail to initiate multipart upload. URI:" + sb2, e);
            }
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
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
    /* JADX WARN: Removed duplicated region for block: B:47:0x017b A[Catch: all -> 0x016c, TryCatch #7 {all -> 0x016c, blocks: (B:17:0x008b, B:18:0x00a2, B:20:0x00bc, B:22:0x00d0, B:24:0x00d6, B:31:0x00e8, B:32:0x010e, B:33:0x010f, B:34:0x014d, B:38:0x0153, B:39:0x0169, B:45:0x0173, B:47:0x017b, B:49:0x017f, B:53:0x01c6), top: B:61:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01c6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.infra.galaxy.fds.android.model.UploadPartResult uploadPart(java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22, com.xiaomi.infra.galaxy.fds.android.util.ObjectInputStream r23, long r24) throws com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException {
        /*
            Method dump skipped, instructions count: 461
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.uploadPart(java.lang.String, java.lang.String, java.lang.String, int, com.xiaomi.infra.galaxy.fds.android.util.ObjectInputStream, long):com.xiaomi.infra.galaxy.fds.android.model.UploadPartResult");
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
        this.httpClient = createHttpClient(this.config);
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
    /* JADX WARN: Removed duplicated region for block: B:51:0x0156 A[ADDED_TO_REGION] */
    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.infra.galaxy.fds.android.model.FDSObject getObject(java.lang.String r17, long r18, java.util.List<com.xiaomi.infra.galaxy.fds.android.model.UserParam> r20, com.xiaomi.infra.galaxy.fds.android.model.ProgressListener r21) throws com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.getObject(java.lang.String, long, java.util.List, com.xiaomi.infra.galaxy.fds.android.model.ProgressListener):com.xiaomi.infra.galaxy.fds.android.model.FDSObject");
    }

    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    public PutObjectResult putObject(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata, List<UserParam> list) throws GalaxyFDSClientException {
        return putObject(str, str2, inputStream, objectMetadata, list, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fa  */
    @Override // com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult putObject(final java.lang.String r22, java.lang.String r23, java.io.InputStream r24, final com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata r25, java.util.List<com.xiaomi.infra.galaxy.fds.android.model.UserParam> r26, com.xiaomi.infra.galaxy.fds.android.model.ProgressListener r27) throws com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException {
        /*
            Method dump skipped, instructions count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl.putObject(java.lang.String, java.lang.String, java.io.InputStream, com.xiaomi.infra.galaxy.fds.android.model.ObjectMetadata, java.util.List, com.xiaomi.infra.galaxy.fds.android.model.ProgressListener):com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult");
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
            boolean z = i != 0 && !isGetThumbnail;
            if (z) {
                try {
                    length = file.length();
                } catch (GalaxyFDSClientException e) {
                    i++;
                    if (i >= this.config.getMaxRetryTimes()) {
                        throw e;
                    } else if (!TEST_MODE) {
                        Log.i(LOG_TAG, "Retry the download of object:" + str2 + " bucket" + Constants.COLON_SEPARATOR + str + " to file: " + file.getAbsolutePath() + " cause:" + Util.getStackTrace(e));
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
            boolean z = i != 0 && !isGetThumbnail;
            if (z) {
                try {
                    length = file.length();
                } catch (GalaxyFDSClientException e) {
                    i++;
                    if (i >= this.config.getMaxRetryTimes()) {
                        throw e;
                    } else if (!TEST_MODE) {
                        Log.i(LOG_TAG, "Retry the download of object:" + str + " to file: " + file.getAbsolutePath() + " cause:" + Util.getStackTrace(e));
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
