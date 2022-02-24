package com.ifengyu.intercom.ui;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.g.d.k;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.r;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.login.LiteLoginActivity;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.service.DownloadService;
import com.ifengyu.intercom.ui.activity.ConnectDeviceActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.tencent.open.SocialConstants;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import pl.droidsonroids.gif.GifImageView;

/* loaded from: classes2.dex */
public class SplashActivity extends BaseActivity {
    private Bundle q;
    private Disposable r;
    private GifImageView s;
    private TextView t;
    private boolean u;
    private int v = 3;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends k {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.b("SplashActivity", "onError:" + exc.getMessage());
        }

        public void a(AdModel adModel, int i) {
            if (adModel != null) {
                if (z.c()) {
                    z.a("SplashActivity", "onResponse:" + adModel.toString());
                }
                if (adModel.isGoToDownload && !c0.b(SplashActivity.this.getApplicationContext(), DownloadService.class.getName())) {
                    DownloadService.a(SplashActivity.this.getApplicationContext(), adModel);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ObservableOnSubscribe<AdModel> {
        b() {
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(@NonNull ObservableEmitter<AdModel> observableEmitter) throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            AdModel x = SplashActivity.this.x();
            if (x != null) {
                x.type = SplashActivity.this.c(x.imagePath);
                long currentTimeMillis2 = System.currentTimeMillis();
                if (currentTimeMillis2 - currentTimeMillis < 300) {
                    SystemClock.sleep((300 - currentTimeMillis2) + currentTimeMillis);
                }
                observableEmitter.onNext(x);
                return;
            }
            long currentTimeMillis3 = System.currentTimeMillis();
            if (currentTimeMillis3 - currentTimeMillis < 1500) {
                SystemClock.sleep((1500 - currentTimeMillis3) + currentTimeMillis);
            }
            observableEmitter.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Observer<AdModel> {
        c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onNext(@io.reactivex.annotations.NonNull com.ifengyu.intercom.bean.AdModel r7) {
            /*
                r6 = this;
                java.lang.String r0 = r7.type
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                java.lang.String r1 = "SplashActivity"
                r2 = 0
                if (r0 == 0) goto L_0x0012
                java.lang.String r0 = "the image type is null"
                com.ifengyu.intercom.i.z.a(r1, r0)
                goto L_0x008d
            L_0x0012:
                java.lang.String r0 = r7.type
                java.lang.String r3 = "gif"
                boolean r0 = r3.equals(r0)
                if (r0 == 0) goto L_0x0072
                java.lang.String r0 = "the image type is gif"
                com.ifengyu.intercom.i.z.a(r1, r0)
                pl.droidsonroids.gif.c r0 = new pl.droidsonroids.gif.c     // Catch: IOException -> 0x0068
                java.lang.String r1 = r7.imagePath     // Catch: IOException -> 0x0068
                r0.<init>(r1)     // Catch: IOException -> 0x0068
                com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch: IOException -> 0x0065
                pl.droidsonroids.gif.GifImageView r1 = com.ifengyu.intercom.ui.SplashActivity.e(r1)     // Catch: IOException -> 0x0065
                r2 = 0
                r1.setVisibility(r2)     // Catch: IOException -> 0x0065
                com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch: IOException -> 0x0065
                pl.droidsonroids.gif.GifImageView r1 = com.ifengyu.intercom.ui.SplashActivity.e(r1)     // Catch: IOException -> 0x0065
                r1.setImageDrawable(r0)     // Catch: IOException -> 0x0065
                com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch: IOException -> 0x0065
                android.widget.TextView r1 = com.ifengyu.intercom.ui.SplashActivity.f(r1)     // Catch: IOException -> 0x0065
                r1.setVisibility(r2)     // Catch: IOException -> 0x0065
                com.ifengyu.intercom.ui.SplashActivity r1 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch: IOException -> 0x0065
                android.widget.TextView r1 = com.ifengyu.intercom.ui.SplashActivity.f(r1)     // Catch: IOException -> 0x0065
                r3 = 2131821319(0x7f110307, float:1.9275378E38)
                r4 = 1
                java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: IOException -> 0x0065
                com.ifengyu.intercom.ui.SplashActivity r5 = com.ifengyu.intercom.ui.SplashActivity.this     // Catch: IOException -> 0x0065
                int r5 = com.ifengyu.intercom.ui.SplashActivity.g(r5)     // Catch: IOException -> 0x0065
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: IOException -> 0x0065
                r4[r2] = r5     // Catch: IOException -> 0x0065
                java.lang.String r2 = com.ifengyu.intercom.i.k0.a(r3, r4)     // Catch: IOException -> 0x0065
                r1.setText(r2)     // Catch: IOException -> 0x0065
                r2 = r0
                goto L_0x008d
            L_0x0065:
                r1 = move-exception
                r2 = r0
                goto L_0x0069
            L_0x0068:
                r1 = move-exception
            L_0x0069:
                r1.printStackTrace()
                com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this
                com.ifengyu.intercom.ui.SplashActivity.a(r0, r7)
                goto L_0x008d
            L_0x0072:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r3 = "the image type is "
                r0.append(r3)
                java.lang.String r3 = r7.type
                r0.append(r3)
                java.lang.String r0 = r0.toString()
                com.ifengyu.intercom.i.z.a(r1, r0)
                com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this
                com.ifengyu.intercom.ui.SplashActivity.a(r0, r7)
            L_0x008d:
                com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this
                com.ifengyu.intercom.ui.SplashActivity.a(r0, r7, r2)
                int r7 = r7.showInterval
                if (r7 <= 0) goto L_0x009c
                com.ifengyu.intercom.ui.SplashActivity r0 = com.ifengyu.intercom.ui.SplashActivity.this
                com.ifengyu.intercom.ui.SplashActivity.a(r0, r7, r2)
                goto L_0x00a2
            L_0x009c:
                com.ifengyu.intercom.ui.SplashActivity r7 = com.ifengyu.intercom.ui.SplashActivity.this
                r0 = 3
                com.ifengyu.intercom.ui.SplashActivity.a(r7, r0, r2)
            L_0x00a2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.ui.SplashActivity.c.onNext(com.ifengyu.intercom.bean.AdModel):void");
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            SplashActivity.this.y();
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            SplashActivity.this.r = disposable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ pl.droidsonroids.gif.c f5998a;

        d(pl.droidsonroids.gif.c cVar) {
            this.f5998a = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SplashActivity.this.r != null && !SplashActivity.this.r.isDisposed()) {
                SplashActivity.this.r.dispose();
            }
            pl.droidsonroids.gif.c cVar = this.f5998a;
            if (cVar != null) {
                cVar.pause();
            }
            SplashActivity.this.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdModel f6000a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ pl.droidsonroids.gif.c f6001b;

        e(AdModel adModel, pl.droidsonroids.gif.c cVar) {
            this.f6000a = adModel;
            this.f6001b = cVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!TextUtils.isEmpty(this.f6000a.detailUrl)) {
                if (SplashActivity.this.r != null && !SplashActivity.this.r.isDisposed()) {
                    SplashActivity.this.r.dispose();
                }
                pl.droidsonroids.gif.c cVar = this.f6001b;
                if (cVar != null) {
                    cVar.pause();
                }
                if (SplashActivity.this.u) {
                    Intent intent = new Intent(SplashActivity.this, MainActivity.class);
                    Intent intent2 = new Intent(SplashActivity.this, WebViewActivity.class);
                    intent2.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                    Bundle bundle = new Bundle();
                    bundle.putString(SocialConstants.PARAM_URL, this.f6000a.detailUrl);
                    intent2.putExtras(bundle);
                    SplashActivity.this.startActivities(new Intent[]{intent, intent2});
                    SplashActivity.this.finish();
                    return;
                }
                Intent a2 = LiteLoginActivity.a(SplashActivity.this);
                a2.setAction("com.ifengyu.intercom.FROM_SPLASH");
                if (SplashActivity.this.q != null) {
                    a2.putExtras(SplashActivity.this.q);
                }
                Intent intent3 = new Intent(SplashActivity.this, WebViewActivity.class);
                intent3.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                Bundle bundle2 = new Bundle();
                bundle2.putString(SocialConstants.PARAM_URL, this.f6000a.detailUrl);
                intent3.putExtras(bundle2);
                SplashActivity.this.startActivities(new Intent[]{a2, intent3});
                SplashActivity.this.finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements com.bumptech.glide.request.d<Drawable> {
        f() {
        }

        @Override // com.bumptech.glide.request.d
        public boolean a(@Nullable GlideException glideException, Object obj, com.bumptech.glide.request.h.h<Drawable> hVar, boolean z) {
            return false;
        }

        public boolean a(Drawable drawable, Object obj, com.bumptech.glide.request.h.h<Drawable> hVar, DataSource dataSource, boolean z) {
            SplashActivity.this.s.setVisibility(0);
            SplashActivity.this.t.setVisibility(0);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.a(MiTalkiApp.b(), "map_style.data", k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/style", "map_style.data");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Observer<Long> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ pl.droidsonroids.gif.c f6005a;

        h(pl.droidsonroids.gif.c cVar) {
            this.f6005a = cVar;
        }

        /* renamed from: a */
        public void onNext(@NonNull Long l) {
            if (l.longValue() > 0) {
                SplashActivity.this.t.setText(k0.a((int) R.string.skip_interval, l));
                return;
            }
            pl.droidsonroids.gif.c cVar = this.f6005a;
            if (cVar != null) {
                cVar.pause();
            }
            SplashActivity.this.y();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            z.b("SplashActivity", "oError:" + th.toString());
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            SplashActivity.this.r = disposable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements Function<Long, Long> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f6007a;

        i(int i) {
            this.f6007a = i;
        }

        /* renamed from: a */
        public Long apply(@NonNull Long l) throws Exception {
            return Long.valueOf(this.f6007a - l.longValue());
        }
    }

    private void A() {
        Observable.create(new ObservableOnSubscribe() { // from class: com.ifengyu.intercom.ui.g
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                SplashActivity.this.a(observableEmitter);
            }
        }).compose(com.ifengyu.intercom.lite.d.f.c()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SplashActivity.this.a((List) obj);
            }
        }, f.f6394a);
    }

    private void B() {
        com.ifengyu.intercom.g.a.e(new a());
    }

    private void w() {
        new Thread(new g()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public AdModel x() {
        AdModel adModel = (AdModel) com.ifengyu.intercom.i.g.a(r.a(getApplicationContext(), "adcache")).b("admodel");
        if (adModel == null) {
            return null;
        }
        if (z.c()) {
            z.a("SplashActivity", adModel.toString());
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (!adModel.isPublish || adModel.getPublishTime() <= 0 || currentTimeMillis <= adModel.getPublishTime()) {
            return null;
        }
        if ((adModel.getUnpublishTime() == 0 || currentTimeMillis < adModel.getUnpublishTime()) && !TextUtils.isEmpty(adModel.imagePath) && new File(adModel.imagePath).exists() && !TextUtils.isEmpty(adModel.md5) && adModel.md5.equals(a0.a(adModel.imagePath))) {
            return adModel;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.u) {
            A();
        } else {
            a(LiteLoginActivity.a(this));
        }
    }

    private void z() {
        Observable.create(new b()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_welcome);
        this.s = (GifImageView) findViewById(R.id.iv_ad_image);
        this.t = (TextView) findViewById(R.id.tv_ad_skip);
        this.s.setVisibility(4);
        this.t.setVisibility(4);
        this.q = getIntent().getExtras();
        this.u = !TextUtils.isEmpty(getSharedPreferences("sp_user", 0).getString(AuthorizeActivityBase.KEY_USERID, null));
        z();
        B();
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k0.f();
        Disposable disposable = this.r;
        if (disposable != null && !disposable.isDisposed()) {
            this.r.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.q = intent.getExtras();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        String str2 = options.outMimeType;
        return TextUtils.isEmpty(str2) ? "" : str2.substring(6, str2.length());
    }

    private ConnectionConfiguration a(DeviceModel deviceModel) {
        ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(deviceModel.getName(), deviceModel.getAddress(), true);
        connectionConfiguration.a(deviceModel.getDeviceColor());
        connectionConfiguration.b(deviceModel.getDeviceType());
        connectionConfiguration.c(deviceModel.getDeviceId());
        connectionConfiguration.b(true);
        connectionConfiguration.a(deviceModel.isConnected());
        connectionConfiguration.b(deviceModel.getName());
        connectionConfiguration.a(deviceModel.getAddress());
        return connectionConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdModel adModel, pl.droidsonroids.gif.c cVar) {
        this.t.setOnClickListener(new d(cVar));
        this.s.setOnClickListener(new e(adModel, cVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdModel adModel) {
        com.bumptech.glide.request.e a2 = new com.bumptech.glide.request.e().a(true).a(com.bumptech.glide.load.engine.h.f4523a);
        com.bumptech.glide.f<Drawable> a3 = com.bumptech.glide.c.a((FragmentActivity) this).a(adModel.imagePath);
        a3.a(a2);
        a3.a((com.bumptech.glide.h<?, ? super Drawable>) new com.bumptech.glide.load.k.d.c().b());
        a3.b((com.bumptech.glide.request.d<Drawable>) new f());
        a3.a((ImageView) this.s);
    }

    private void a(Intent intent) {
        intent.setAction("com.ifengyu.intercom.FROM_SPLASH");
        Bundle bundle = this.q;
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivity(intent);
        overridePendingTransition(R.anim.screen_zoom_in, R.anim.screen_zoom_out);
        finish();
    }

    public /* synthetic */ void a(ObservableEmitter observableEmitter) throws Exception {
        List<DeviceModel> a2 = LiteDatabase.a(getApplicationContext()).n().a();
        ArrayList arrayList = new ArrayList();
        for (DeviceModel deviceModel : a2) {
            arrayList.add(a(deviceModel));
        }
        observableEmitter.onNext(arrayList);
    }

    public /* synthetic */ void a(List list) throws Exception {
        a(new Intent(this, list.size() > 0 ? MainActivity.class : ConnectDeviceActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, pl.droidsonroids.gif.c cVar) {
        Observable.interval(0L, 1L, TimeUnit.SECONDS).take(i2 + 1).map(new i(i2)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new h(cVar));
    }
}
