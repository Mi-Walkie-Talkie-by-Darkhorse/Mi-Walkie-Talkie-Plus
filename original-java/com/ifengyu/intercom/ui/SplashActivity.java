package com.ifengyu.intercom.ui;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.h;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.request.d;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.i;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.n;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.service.DownloadService;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.activity.LoginActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.b;
import io.reactivex.k;
import io.reactivex.l;
import io.reactivex.m;
import io.reactivex.q;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import pl.droidsonroids.gif.GifImageView;
import pl.droidsonroids.gif.c;

public class SplashActivity extends BaseActivity {
    /* access modifiers changed from: private */
    public Bundle a;
    /* access modifiers changed from: private */
    public b b;
    /* access modifiers changed from: private */
    public GifImageView c;
    /* access modifiers changed from: private */
    public TextView d;
    /* access modifiers changed from: private */
    public boolean q;
    /* access modifiers changed from: private */
    public List<ConnectionConfiguration> r;
    /* access modifiers changed from: private */
    public int s = 3;

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.a = intent.getExtras();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_welcome);
        this.c = (GifImageView) findViewById(R.id.iv_ad_image);
        this.d = (TextView) findViewById(R.id.tv_ad_skip);
        this.c.setVisibility(4);
        this.d.setVisibility(4);
        this.a = getIntent().getExtras();
        if (MiTalkiApp.a().j()) {
            this.q = w.Q();
        } else {
            this.q = !TextUtils.isEmpty(getSharedPreferences("sp_user", 0).getString("username", null));
        }
        d();
        c();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        ad.d();
        if (this.b != null && !this.b.isDisposed()) {
            this.b.dispose();
        }
    }

    private void c() {
        a.c(new i() {
            public void a(Call call, Exception exc, int i) {
                s.e("SplashActivity", "onError:" + exc.getMessage());
            }

            public void a(AdModel adModel, int i) {
                if (adModel != null) {
                    if (s.a()) {
                        s.b("SplashActivity", "onResponse:" + adModel.toString());
                    }
                    if (adModel.isGoToDownload && !v.a(SplashActivity.this.getApplicationContext(), DownloadService.class.getName())) {
                        DownloadService.a(SplashActivity.this.getApplicationContext(), adModel);
                    }
                }
            }
        });
    }

    private void d() {
        k.create(new m<AdModel>() {
            public void a(@NonNull l<AdModel> lVar) throws Exception {
                long currentTimeMillis = System.currentTimeMillis();
                SplashActivity.this.r = new com.ifengyu.intercom.node.a.a(com.ifengyu.intercom.node.a.b.a(SplashActivity.this)).a();
                AdModel a2 = SplashActivity.this.f();
                if (a2 != null) {
                    a2.type = SplashActivity.this.a(a2.imagePath);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (currentTimeMillis2 - currentTimeMillis < 300) {
                        SystemClock.sleep(currentTimeMillis + (300 - currentTimeMillis2));
                    }
                    lVar.a(a2);
                    return;
                }
                long currentTimeMillis3 = System.currentTimeMillis();
                if (currentTimeMillis3 - currentTimeMillis < 1500) {
                    SystemClock.sleep(currentTimeMillis + (1500 - currentTimeMillis3));
                }
                lVar.a();
            }
        }).subscribeOn(io.reactivex.e.a.b()).observeOn(io.reactivex.a.b.a.a()).subscribe((q<? super T>) new q<AdModel>() {
            public void onSubscribe(@NonNull b bVar) {
                SplashActivity.this.b = bVar;
            }

            /* JADX WARNING: Removed duplicated region for block: B:17:0x00a3  */
            /* JADX WARNING: Removed duplicated region for block: B:5:0x0019  */
            /* renamed from: a */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onNext(@io.reactivex.annotations.NonNull com.ifengyu.intercom.bean.AdModel r8) {
                /*
                    r7 = this;
                    r0 = 0
                    java.lang.String r1 = r8.type
                    boolean r1 = android.text.TextUtils.isEmpty(r1)
                    if (r1 == 0) goto L_0x0021
                    java.lang.String r1 = "SplashActivity"
                    java.lang.String r2 = "the image type is null"
                    com.ifengyu.intercom.b.s.b(r1, r2)
                L_0x0010:
                    com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this
                    r1.a(r8, r0)
                    int r1 = r8.showInterval
                    if (r1 <= 0) goto L_0x00a3
                    com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this
                    int r2 = r8.showInterval
                    r1.a(r2, r0)
                L_0x0020:
                    return
                L_0x0021:
                    java.lang.String r1 = "gif"
                    java.lang.String r2 = r8.type
                    boolean r1 = r1.equals(r2)
                    if (r1 == 0) goto L_0x0082
                    java.lang.String r1 = "SplashActivity"
                    java.lang.String r2 = "the image type is gif"
                    com.ifengyu.intercom.b.s.b(r1, r2)
                    pl.droidsonroids.gif.c r1 = new pl.droidsonroids.gif.c     // Catch:{ IOException -> 0x0078 }
                    java.lang.String r2 = r8.imagePath     // Catch:{ IOException -> 0x0078 }
                    r1.<init>(r2)     // Catch:{ IOException -> 0x0078 }
                    com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch:{ IOException -> 0x00ab }
                    pl.droidsonroids.gif.GifImageView r0 = r0.c     // Catch:{ IOException -> 0x00ab }
                    r2 = 0
                    r0.setVisibility(r2)     // Catch:{ IOException -> 0x00ab }
                    com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch:{ IOException -> 0x00ab }
                    pl.droidsonroids.gif.GifImageView r0 = r0.c     // Catch:{ IOException -> 0x00ab }
                    r0.setImageDrawable(r1)     // Catch:{ IOException -> 0x00ab }
                    com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch:{ IOException -> 0x00ab }
                    android.widget.TextView r0 = r0.d     // Catch:{ IOException -> 0x00ab }
                    r2 = 0
                    r0.setVisibility(r2)     // Catch:{ IOException -> 0x00ab }
                    com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch:{ IOException -> 0x00ab }
                    android.widget.TextView r0 = r0.d     // Catch:{ IOException -> 0x00ab }
                    r2 = 2131296755(0x7f0901f3, float:1.8211436E38)
                    r3 = 1
                    java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ IOException -> 0x00ab }
                    r4 = 0
                    com.ifengyu.intercom.ui.SplashActivity r5 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch:{ IOException -> 0x00ab }
                    int r5 = r5.s     // Catch:{ IOException -> 0x00ab }
                    java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ IOException -> 0x00ab }
                    r3[r4] = r5     // Catch:{ IOException -> 0x00ab }
                    java.lang.String r2 = com.ifengyu.intercom.b.ad.a(r2, r3)     // Catch:{ IOException -> 0x00ab }
                    r0.setText(r2)     // Catch:{ IOException -> 0x00ab }
                    r0 = r1
                    goto L_0x0010
                L_0x0078:
                    r1 = move-exception
                L_0x0079:
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
                    com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this
                    r1.a(r8)
                    goto L_0x0010
                L_0x0082:
                    java.lang.String r1 = "SplashActivity"
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r2.<init>()
                    java.lang.String r3 = "the image type is "
                    java.lang.StringBuilder r2 = r2.append(r3)
                    java.lang.String r3 = r8.type
                    java.lang.StringBuilder r2 = r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    com.ifengyu.intercom.b.s.b(r1, r2)
                    com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this
                    r1.a(r8)
                    goto L_0x0010
                L_0x00a3:
                    com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this
                    r2 = 3
                    r1.a(r2, r0)
                    goto L_0x0020
                L_0x00ab:
                    r0 = move-exception
                    r6 = r0
                    r0 = r1
                    r1 = r6
                    goto L_0x0079
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.ui.SplashActivity.AnonymousClass3.onNext(com.ifengyu.intercom.bean.AdModel):void");
            }

            public void onError(@NonNull Throwable th) {
            }

            public void onComplete() {
                SplashActivity.this.e();
            }
        });
    }

    /* access modifiers changed from: private */
    public String a(String str) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        String str2 = options.outMimeType;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        return str2.substring(6, str2.length());
    }

    /* access modifiers changed from: private */
    public void a(final AdModel adModel, final c cVar) {
        this.d.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (SplashActivity.this.b != null && !SplashActivity.this.b.isDisposed()) {
                    SplashActivity.this.b.dispose();
                }
                if (cVar != null) {
                    cVar.pause();
                }
                SplashActivity.this.e();
            }
        });
        this.c.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!TextUtils.isEmpty(adModel.detailUrl)) {
                    if (SplashActivity.this.b != null && !SplashActivity.this.b.isDisposed()) {
                        SplashActivity.this.b.dispose();
                    }
                    if (cVar != null) {
                        cVar.pause();
                    }
                    if (SplashActivity.this.q) {
                        Intent intent = new Intent(SplashActivity.this, MainActivity.class);
                        Intent intent2 = new Intent(SplashActivity.this, WebViewActivity.class);
                        intent2.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                        Bundle bundle = new Bundle();
                        bundle.putString("url", adModel.detailUrl);
                        intent2.putExtras(bundle);
                        SplashActivity.this.startActivities(new Intent[]{intent, intent2});
                        SplashActivity.this.finish();
                        return;
                    }
                    Intent intent3 = new Intent(SplashActivity.this, LoginActivity.class);
                    intent3.setAction("com.ifengyu.intercom.FROM_SPLASH");
                    if (SplashActivity.this.a != null) {
                        intent3.putExtras(SplashActivity.this.a);
                    }
                    Intent intent4 = new Intent(SplashActivity.this, WebViewActivity.class);
                    intent4.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("url", adModel.detailUrl);
                    intent4.putExtras(bundle2);
                    SplashActivity.this.startActivities(new Intent[]{intent3, intent4});
                    SplashActivity.this.finish();
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(AdModel adModel) {
        com.bumptech.glide.c.a((FragmentActivity) this).a((Object) adModel.imagePath).a(new d().a(true).b(g.b)).a((h<?, ? super TranscodeType>) new com.bumptech.glide.load.resource.b.b().c()).a((com.bumptech.glide.request.c<TranscodeType>) new com.bumptech.glide.request.c<Drawable>() {
            public boolean a(@Nullable GlideException glideException, Object obj, com.bumptech.glide.request.a.h<Drawable> hVar, boolean z) {
                return false;
            }

            public boolean a(Drawable drawable, Object obj, com.bumptech.glide.request.a.h<Drawable> hVar, DataSource dataSource, boolean z) {
                SplashActivity.this.c.setVisibility(0);
                SplashActivity.this.d.setVisibility(0);
                return false;
            }
        }).a((ImageView) this.c);
    }

    /* access modifiers changed from: private */
    public void e() {
        Class cls = this.q ? (this.r == null || this.r.size() <= 0) ? ConnectDeviceActivity.class : MainActivity.class : LoginActivity.class;
        Intent intent = new Intent(this, cls);
        intent.setAction("com.ifengyu.intercom.FROM_SPLASH");
        if (this.a != null) {
            intent.putExtras(this.a);
        }
        startActivity(intent);
        overridePendingTransition(R.anim.screen_zoom_in, R.anim.screen_zoom_out);
        new Thread(new Runnable() {
            public void run() {
                n.a(MiTalkiApp.a(), "map_style.data", Environment.getExternalStorageDirectory() + "/" + "mitalki/map/style", "map_style.data");
            }
        }).start();
        finish();
    }

    /* access modifiers changed from: private */
    @NonNull
    public AdModel f() {
        AdModel adModel = (AdModel) com.ifengyu.intercom.b.a.a(n.a(getApplicationContext(), "adcache")).b("admodel");
        if (adModel != null) {
            if (s.a()) {
                s.b("SplashActivity", adModel.toString());
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (adModel.isPublish && adModel.getPublishTime() > 0 && currentTimeMillis > adModel.getPublishTime() && ((adModel.getUnpublishTime() == 0 || currentTimeMillis < adModel.getUnpublishTime()) && !TextUtils.isEmpty(adModel.imagePath) && new File(adModel.imagePath).exists() && !TextUtils.isEmpty(adModel.md5) && adModel.md5.equals(t.b(adModel.imagePath)))) {
                return adModel;
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    public void a(final int i, final c cVar) {
        k.interval(0, 1, TimeUnit.SECONDS).take((long) (i + 1)).map(new io.reactivex.b.g<Long, Long>() {
            /* renamed from: a */
            public Long apply(@NonNull Long l) throws Exception {
                return Long.valueOf(((long) i) - l.longValue());
            }
        }).subscribeOn(io.reactivex.e.a.b()).observeOn(io.reactivex.a.b.a.a()).subscribe((q<? super T>) new q<Long>() {
            public void onSubscribe(@NonNull b bVar) {
                SplashActivity.this.b = bVar;
            }

            /* renamed from: a */
            public void onNext(@NonNull Long l) {
                if (l.longValue() > 0) {
                    SplashActivity.this.d.setText(ad.a((int) R.string.skip_interval, l));
                    return;
                }
                if (cVar != null) {
                    cVar.pause();
                }
                SplashActivity.this.e();
            }

            public void onError(@NonNull Throwable th) {
                s.e("SplashActivity", "oError:" + th.toString());
            }

            public void onComplete() {
            }
        });
    }
}
