package com.ifengyu.im.imservice.network.http;

import com.ifengyu.im.utils.Logger;
import com.jakewharton.retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import retrofit2.c;
import retrofit2.d.a;
import retrofit2.l;

public class IMRetrofitClient {
    private static final String HOST = "http://im-test.ifengyu.com/";
    private static a converterFactory = retrofit2.a.a.a.a();
    private static c.a factory = RxJava2CallAdapterFactory.create();
    /* access modifiers changed from: private */
    public static Logger logger = Logger.getLogger(IMRetrofitClient.class);
    private static IMServiceApi sApiService;
    private static OkHttpClient sOkhttpClient = new OkHttpClient();

    public static class LoggingInterceptor implements Interceptor {
        public Response intercept(Chain chain) throws IOException {
            Request request = chain.request();
            long nanoTime = System.nanoTime();
            IMRetrofitClient.logger.i(String.format("发送请求 %s on %s%n%s", new Object[]{request.url(), chain.connection(), request.headers()}), new Object[0]);
            Response proceed = chain.proceed(request);
            long nanoTime2 = System.nanoTime();
            ResponseBody peekBody = proceed.peekBody(1048576);
            IMRetrofitClient.logger.i(String.format("接收响应: [%s] %n返回json:【%s】 %.1fms%n%s", new Object[]{proceed.request().url(), peekBody.string(), Double.valueOf(((double) (nanoTime2 - nanoTime)) / 1000000.0d), proceed.headers()}), new Object[0]);
            return proceed;
        }
    }

    public static IMServiceApi getServiceApi() {
        if (sApiService == null) {
            sOkhttpClient = sOkhttpClient.newBuilder().addInterceptor(new LoggingInterceptor()).build();
            sApiService = (IMServiceApi) new l.a().a(sOkhttpClient).a(HOST).a(converterFactory).a(factory).a().a(IMServiceApi.class);
        }
        return sApiService;
    }
}
