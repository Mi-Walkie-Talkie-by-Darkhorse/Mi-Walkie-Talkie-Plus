package com.xiaomi.infra.galaxy.fds.android.util;

import com.xiaomi.infra.galaxy.fds.android.auth.GalaxyFDSCredential;
import com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException;
import com.xiaomi.infra.galaxy.fds.model.HttpMethod;
import java.util.Date;
import java.util.Map;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes2.dex */
public class RequestFactory {

    /* renamed from: com.xiaomi.infra.galaxy.fds.android.util.RequestFactory$1 */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C58971 {
        static final /* synthetic */ int[] $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod = iArr;
            try {
                iArr[HttpMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod[HttpMethod.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod[HttpMethod.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod[HttpMethod.HEAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HttpUriRequest createRequest(String str, GalaxyFDSCredential galaxyFDSCredential, HttpMethod httpMethod, Map<String, String> map) throws GalaxyFDSClientException {
        HttpUriRequest httpGet;
        HttpUriRequest httpUriRequest;
        String addParam = galaxyFDSCredential.addParam(str);
        int i = C58971.$SwitchMap$com$xiaomi$infra$galaxy$fds$model$HttpMethod[httpMethod.ordinal()];
        if (i == 1) {
            httpGet = new HttpGet(addParam);
        } else if (i == 2) {
            httpGet = new HttpPut(addParam);
        } else if (i == 3) {
            httpGet = new HttpPost(addParam);
        } else if (i == 4) {
            httpGet = new HttpDelete(addParam);
        } else if (i != 5) {
            httpUriRequest = null;
            if (httpUriRequest != null) {
                if (map != null) {
                    map.remove("Content-Length");
                    map.remove("Content-Length".toLowerCase());
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpUriRequest.addHeader(entry.getKey(), entry.getValue());
                    }
                }
                httpUriRequest.addHeader("Date", Util.formatDateString(new Date()));
                galaxyFDSCredential.addHeader(httpUriRequest);
            }
            return httpUriRequest;
        } else {
            httpGet = new HttpHead(addParam);
        }
        httpUriRequest = httpGet;
        if (httpUriRequest != null) {
        }
        return httpUriRequest;
    }
}
