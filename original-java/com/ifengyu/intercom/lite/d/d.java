package com.ifengyu.intercom.lite.d;

import android.content.Context;
import com.ifengyu.intercom.MiTalkiApp;
import com.jakewharton.retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* compiled from: RetrofitClient.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static OkHttpClient f5369a;

    /* renamed from: b  reason: collision with root package name */
    private static Retrofit f5370b;

    public static Retrofit a() {
        if (f5369a == null) {
            a(MiTalkiApp.b());
        }
        if (f5370b == null) {
            f5370b = new Retrofit.Builder().baseUrl("https://api.ifengyu.com").client(f5369a).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create()).build();
        }
        return f5370b;
    }

    private static void a(Context context) {
        OkHttpClient.Builder writeTimeout = new OkHttpClient.Builder().connectTimeout(10L, TimeUnit.SECONDS).readTimeout(10L, TimeUnit.SECONDS).writeTimeout(10L, TimeUnit.SECONDS);
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        writeTimeout.addInterceptor(httpLoggingInterceptor);
        f5369a = writeTimeout.build();
    }
}
