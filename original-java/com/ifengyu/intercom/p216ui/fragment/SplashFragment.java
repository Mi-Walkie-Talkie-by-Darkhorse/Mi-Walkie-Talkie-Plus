package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.p103k.p105d.DrawableTransitionOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.p110h.Target;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.p209o.OkHttpUtils;
import com.ifengyu.intercom.p209o.p210b.GetBuilder;
import com.ifengyu.intercom.p209o.p211c.SplashCallback;
import com.ifengyu.intercom.p214p.ACache;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.login.LoginActivity;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.open.SocialConstants;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import pl.droidsonroids.gif.C6889c;
import pl.droidsonroids.gif.GifImageView;

/* renamed from: com.ifengyu.intercom.ui.fragment.x1 */
/* loaded from: classes2.dex */
public class SplashFragment extends BaseFragment {

    /* renamed from: A */
    private TextView f15377A;

    /* renamed from: B */
    private boolean f15378B;

    /* renamed from: z */
    private GifImageView f15379z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.x1$a */
    /* loaded from: classes2.dex */
    public class C4633a extends SplashCallback {
        C4633a(SplashFragment splashFragment) {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: d */
        public void mo9819d(Call call, Exception exc, int i) {
            C4161y.m11052c("SplashFragment", "onError:" + exc.getMessage());
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: i */
        public void mo9818e(AdModel adModel, int i) {
            if (adModel != null) {
                if (C4161y.m11046i()) {
                    C4161y.m11054a("SplashFragment", "onResponse:" + adModel.toString());
                }
                if (adModel.isGoToDownload) {
                    MiTalkiApp.m14296h().m14298f(adModel);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.x1$b */
    /* loaded from: classes2.dex */
    public class C4634b implements Observer<AdModel> {
        C4634b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0097  */
        @Override // io.reactivex.Observer
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onNext(@NonNull AdModel adModel) {
            int i;
            C6889c c6889c = null;
            if (TextUtils.isEmpty(adModel.type)) {
                C4161y.m11054a("SplashFragment", "the image type is null");
            } else if ("gif".equals(adModel.type)) {
                C4161y.m11054a("SplashFragment", "the image type is gif");
                try {
                    C6889c c6889c2 = new C6889c(adModel.imagePath);
                    try {
                        SplashFragment.this.f15379z.setVisibility(0);
                        SplashFragment.this.f15379z.setImageDrawable(c6889c2);
                        SplashFragment.this.f15377A.setVisibility(0);
                        SplashFragment.this.f15377A.setText(UIUtils.m8602p(R.string.skip_interval, 3));
                        c6889c = c6889c2;
                    } catch (IOException e) {
                        e = e;
                        c6889c = c6889c2;
                        e.printStackTrace();
                        SplashFragment.this.m9831o3(adModel);
                        SplashFragment.this.m9826t3(adModel, c6889c);
                        i = adModel.showInterval;
                        if (i <= 0) {
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } else {
                C4161y.m11054a("SplashFragment", "the image type is " + adModel.type);
                SplashFragment.this.m9831o3(adModel);
            }
            SplashFragment.this.m9826t3(adModel, c6889c);
            i = adModel.showInterval;
            if (i <= 0) {
                SplashFragment.this.m9832n3(i, c6889c);
            } else {
                SplashFragment.this.m9832n3(3, c6889c);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            SplashFragment.this.m9828r3();
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.x1$c */
    /* loaded from: classes2.dex */
    public class C4635c implements RequestListener<Drawable> {
        C4635c() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* renamed from: a */
        public boolean mo9815a(@Nullable GlideException glideException, Object obj, Target<Drawable> target, boolean z) {
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* renamed from: c */
        public boolean mo9814b(Drawable drawable, Object obj, Target<Drawable> target, DataSource dataSource, boolean z) {
            SplashFragment.this.f15379z.setVisibility(0);
            SplashFragment.this.f15377A.setVisibility(0);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.fragment.x1$d */
    /* loaded from: classes2.dex */
    public class C4636d implements Observer<Long> {

        /* renamed from: a */
        final /* synthetic */ C6889c f15382a;

        C4636d(C6889c c6889c) {
            this.f15382a = c6889c;
        }

        @Override // io.reactivex.Observer
        /* renamed from: a */
        public void onNext(@NonNull Long l) {
            if (l.longValue() > 0) {
                SplashFragment.this.f15377A.setText(UIUtils.m8602p(R.string.skip_interval, l));
                return;
            }
            C6889c c6889c = this.f15382a;
            if (c6889c != null) {
                c6889c.pause();
            }
            SplashFragment.this.m9828r3();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            C4161y.m11052c("SplashFragment", "oError:" + th.toString());
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9841B3(AdModel adModel, C6889c c6889c, View view) {
        if (TextUtils.isEmpty(adModel.detailUrl)) {
            return;
        }
        if (c6889c != null) {
            c6889c.pause();
        }
        if (this.f15378B) {
            Intent intent = new Intent(getContext(), MainActivity.class);
            Intent intent2 = new Intent(getContext(), WebViewActivity.class);
            intent2.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
            Bundle bundle = new Bundle();
            bundle.putString(SocialConstants.PARAM_URL, adModel.detailUrl);
            intent2.putExtras(bundle);
            getActivity().startActivities(new Intent[]{intent, intent2});
            getActivity().finish();
            return;
        }
        Intent m9767N = LoginActivity.m9767N(getContext());
        Intent intent3 = new Intent(getContext(), WebViewActivity.class);
        intent3.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
        Bundle bundle2 = new Bundle();
        bundle2.putString(SocialConstants.PARAM_URL, adModel.detailUrl);
        intent3.putExtras(bundle2);
        getActivity().startActivities(new Intent[]{m9767N, intent3});
        getActivity().finish();
    }

    /* renamed from: C3 */
    private void m9840C3() {
        GetBuilder m11353b = OkHttpUtils.m11353b();
        m11353b.m11344a("https://cms.ifengyu.com/fymanage/api/splash/?is_publish=1&limit=1");
        m11353b.m11345c().m11325b(new C4633a(this));
    }

    /* renamed from: m3 */
    private void m9833m3() {
        new Thread(RunnableC4521g1.f15221a).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public void m9832n3(final int i, C6889c c6889c) {
        ((ObservableSubscribeProxy) Observable.interval(0L, 1L, TimeUnit.SECONDS).take(i + 1).map(new Function() { // from class: com.ifengyu.intercom.ui.fragment.h1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Long valueOf;
                valueOf = Long.valueOf(i - ((Long) obj).longValue());
                return valueOf;
            }
        }).subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).subscribe(new C4636d(c6889c));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public void m9831o3(AdModel adModel) {
        RequestOptions m17243g = new RequestOptions().m17244f0(true).m17243g(DiskCacheStrategy.f9287a);
        RequestBuilder<Drawable> m18113q = Glide.m18151v(this).m18113q(adModel.imagePath);
        m18113q.m18140b(m17243g);
        m18113q.m18122t(new DrawableTransitionOptions().m17493e());
        m18113q.m18128n(new C4635c());
        m18113q.m18130l(this.f15379z);
    }

    /* renamed from: p3 */
    private AdModel m9830p3() {
        AdModel adModel = (AdModel) ACache.m11133b(C4970j.m8666d(getContext(), "adcache")).m11130e("admodel");
        if (adModel != null) {
            if (C4161y.m11046i()) {
                C4161y.m11054a("SplashFragment", adModel.toString());
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (!adModel.isPublish || adModel.getPublishTime() <= 0 || currentTimeMillis <= adModel.getPublishTime()) {
                return null;
            }
            if ((adModel.getUnpublishTime() == 0 || currentTimeMillis < adModel.getUnpublishTime()) && !TextUtils.isEmpty(adModel.imagePath) && new File(adModel.imagePath).exists() && !TextUtils.isEmpty(adModel.md5) && adModel.md5.equals(MD5Util.m11041a(adModel.imagePath))) {
                return adModel;
            }
            return null;
        }
        return null;
    }

    /* renamed from: q3 */
    private String m9829q3(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        String str2 = options.outMimeType;
        return TextUtils.isEmpty(str2) ? "" : str2.substring(6, str2.length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public void m9828r3() {
        if (this.f15378B) {
            MainActivity.start(getContext());
        } else {
            startActivity(LoginActivity.m9767N(getContext()));
        }
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    /* renamed from: s3 */
    private void m9827s3() {
        ((ObservableSubscribeProxy) Observable.create(new ObservableOnSubscribe() { // from class: com.ifengyu.intercom.ui.fragment.i1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                SplashFragment.this.m9822x3(observableEmitter);
            }
        }).subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).subscribe(new C4634b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public void m9826t3(final AdModel adModel, final C6889c c6889c) {
        this.f15377A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashFragment.this.m9820z3(c6889c, view);
            }
        });
        this.f15379z.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SplashFragment.this.m9841B3(adModel, c6889c, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u3 */
    public static /* synthetic */ void m9825u3() {
        String str = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath() + "/AMap/style";
        C4970j.m8669a(MiTalkiApp.m14296h(), "style.data", str, "style.data");
        C4970j.m8669a(MiTalkiApp.m14296h(), "style_extra.data", str, "style_extra.data");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m9822x3(ObservableEmitter observableEmitter) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        AdModel m9830p3 = m9830p3();
        if (m9830p3 != null) {
            m9830p3.type = m9829q3(m9830p3.imagePath);
            long currentTimeMillis2 = System.currentTimeMillis();
            if (currentTimeMillis2 - currentTimeMillis < 300) {
                SystemClock.sleep((300 - currentTimeMillis2) + currentTimeMillis);
            }
            observableEmitter.onNext(m9830p3);
            return;
        }
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m9820z3(C6889c c6889c, View view) {
        if (c6889c != null) {
            c6889c.pause();
        }
        m9828r3();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        this.f15378B = !TextUtils.isEmpty(MiTalkClientUtil.m11243P());
        m9827s3();
        m9840C3();
        m9833m3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_splash, (ViewGroup) null);
        this.f15379z = (GifImageView) inflate.findViewById(R.id.iv_ad_image);
        this.f15377A = (TextView) inflate.findViewById(R.id.tv_ad_skip);
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        UIUtils.m8597u();
    }
}
