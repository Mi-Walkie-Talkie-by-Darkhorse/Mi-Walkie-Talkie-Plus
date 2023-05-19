package p048b.p065c.p066a.p072g;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpParams;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import p048b.p065c.p066a.OkGo;

/* renamed from: b.c.a.g.b */
/* loaded from: classes2.dex */
public class HttpUtils {
    /* renamed from: a */
    public static Request.Builder m21064a(Request.Builder builder, HttpHeaders httpHeaders) {
        if (httpHeaders.f16769a.isEmpty()) {
            return builder;
        }
        Headers.Builder builder2 = new Headers.Builder();
        try {
            for (Map.Entry<String, String> entry : httpHeaders.f16769a.entrySet()) {
                builder2.add(entry.getKey(), entry.getValue());
            }
        } catch (Exception e) {
            OkLogger.m21049a(e);
        }
        builder.headers(builder2.build());
        return builder;
    }

    /* renamed from: b */
    public static <T> T m21063b(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: UnsupportedEncodingException -> 0x0077, TryCatch #0 {UnsupportedEncodingException -> 0x0077, blocks: (B:2:0x0000, B:6:0x0014, B:9:0x001b, B:11:0x0024, B:12:0x002c, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:18:0x0069, B:10:0x0021), top: B:23:0x0000 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m21062c(String str, Map<String, List<String>> map) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (str.indexOf(38) <= 0 && str.indexOf(63) <= 0) {
                sb.append("?");
                for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                    for (String str2 : entry.getValue()) {
                        String encode = URLEncoder.encode(str2, "UTF-8");
                        sb.append(entry.getKey());
                        sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                        sb.append(encode);
                        sb.append(ContainerUtils.FIELD_DELIMITER);
                    }
                }
                sb.deleteCharAt(sb.length() - 1);
                return sb.toString();
            }
            sb.append(ContainerUtils.FIELD_DELIMITER);
            while (r7.hasNext()) {
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            OkLogger.m21049a(e);
            return str;
        }
    }

    /* renamed from: d */
    public static RequestBody m21061d(HttpParams httpParams, boolean z) {
        if (httpParams.f16771b.isEmpty() && !z) {
            FormBody.Builder builder = new FormBody.Builder();
            for (String str : httpParams.f16770a.keySet()) {
                for (String str2 : httpParams.f16770a.get(str)) {
                    builder.add(str, str2);
                }
            }
            return builder.build();
        }
        MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
        if (!httpParams.f16770a.isEmpty()) {
            for (Map.Entry<String, List<String>> entry : httpParams.f16770a.entrySet()) {
                for (String str3 : entry.getValue()) {
                    type.addFormDataPart(entry.getKey(), str3);
                }
            }
        }
        for (Map.Entry<String, List<HttpParams.FileWrapper>> entry2 : httpParams.f16771b.entrySet()) {
            for (HttpParams.FileWrapper fileWrapper : entry2.getValue()) {
                type.addFormDataPart(entry2.getKey(), fileWrapper.f16773b, RequestBody.create(fileWrapper.f16774c, fileWrapper.f16772a));
            }
        }
        return type.build();
    }

    /* renamed from: e */
    private static String m21060e(Response response) {
        String header = response.header("Content-Disposition");
        if (header != null) {
            String replaceAll = header.replaceAll("\"", "");
            int indexOf = replaceAll.indexOf("filename=");
            if (indexOf != -1) {
                return replaceAll.substring(indexOf + 9, replaceAll.length());
            }
            int indexOf2 = replaceAll.indexOf("filename*=");
            if (indexOf2 != -1) {
                String substring = replaceAll.substring(indexOf2 + 10, replaceAll.length());
                return substring.startsWith("UTF-8''") ? substring.substring(7, substring.length()) : substring;
            }
            return null;
        }
        return null;
    }

    /* renamed from: f */
    public static String m21059f(Response response, String str) {
        String m21060e = m21060e(response);
        if (TextUtils.isEmpty(m21060e)) {
            m21060e = m21058g(str);
        }
        if (TextUtils.isEmpty(m21060e)) {
            m21060e = "unknownfile_" + System.currentTimeMillis();
        }
        try {
            return URLDecoder.decode(m21060e, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            OkLogger.m21049a(e);
            return m21060e;
        }
    }

    /* renamed from: g */
    private static String m21058g(String str) {
        int indexOf;
        String[] split = str.split("/");
        for (String str2 : split) {
            if (str2.contains("?") && (indexOf = str2.indexOf("?")) != -1) {
                return str2.substring(0, indexOf);
            }
        }
        if (split.length > 0) {
            return split[split.length - 1];
        }
        return null;
    }

    /* renamed from: h */
    public static void m21057h(Runnable runnable) {
        OkGo.m21114h().m21115g().post(runnable);
    }
}
