package p048b.p076e.p077a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;

/* renamed from: b.e.a.b */
/* loaded from: classes2.dex */
public class RxPermissions {

    /* renamed from: b */
    static final Object f5360b = new Object();

    /* renamed from: a */
    RxPermissionsFragment f5361a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxPermissions.java */
    /* renamed from: b.e.a.b$a */
    /* loaded from: classes2.dex */
    public class C1140a implements ObservableTransformer<T, Boolean> {

        /* renamed from: a */
        final /* synthetic */ String[] f5362a;

        /* compiled from: RxPermissions.java */
        /* renamed from: b.e.a.b$a$a */
        /* loaded from: classes2.dex */
        class C1141a implements Function<List<Permission>, ObservableSource<Boolean>> {
            C1141a(C1140a c1140a) {
            }

            @Override // io.reactivex.functions.Function
            /* renamed from: a */
            public ObservableSource<Boolean> apply(List<Permission> list) throws Exception {
                if (list.isEmpty()) {
                    return Observable.empty();
                }
                for (Permission permission : list) {
                    if (!permission.f5358b) {
                        return Observable.just(Boolean.FALSE);
                    }
                }
                return Observable.just(Boolean.TRUE);
            }
        }

        C1140a(String[] strArr) {
            this.f5362a = strArr;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<Boolean> apply(Observable<T> observable) {
            return RxPermissions.this.m21014k(observable, this.f5362a).buffer(this.f5362a.length).flatMap(new C1141a(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxPermissions.java */
    /* renamed from: b.e.a.b$b */
    /* loaded from: classes2.dex */
    public class C1142b implements Function<Object, Observable<Permission>> {

        /* renamed from: a */
        final /* synthetic */ String[] f5364a;

        C1142b(String[] strArr) {
            this.f5364a = strArr;
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: a */
        public Observable<Permission> apply(Object obj) throws Exception {
            return RxPermissions.this.m21012m(this.f5364a);
        }
    }

    public RxPermissions(@NonNull Activity activity) {
        this.f5361a = m21020e(activity);
    }

    /* renamed from: d */
    private RxPermissionsFragment m21021d(Activity activity) {
        return (RxPermissionsFragment) activity.getFragmentManager().findFragmentByTag("RxPermissions");
    }

    /* renamed from: e */
    private RxPermissionsFragment m21020e(Activity activity) {
        RxPermissionsFragment m21021d = m21021d(activity);
        if (m21021d == null) {
            RxPermissionsFragment rxPermissionsFragment = new RxPermissionsFragment();
            FragmentManager fragmentManager = activity.getFragmentManager();
            fragmentManager.beginTransaction().add(rxPermissionsFragment, "RxPermissions").commitAllowingStateLoss();
            fragmentManager.executePendingTransactions();
            return rxPermissionsFragment;
        }
        return m21021d;
    }

    /* renamed from: i */
    private Observable<?> m21016i(Observable<?> observable, Observable<?> observable2) {
        if (observable == null) {
            return Observable.just(f5360b);
        }
        return Observable.merge(observable, observable2);
    }

    /* renamed from: j */
    private Observable<?> m21015j(String... strArr) {
        for (String str : strArr) {
            if (!this.f5361a.m21008a(str)) {
                return Observable.empty();
            }
        }
        return Observable.just(f5360b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public Observable<Permission> m21014k(Observable<?> observable, String... strArr) {
        if (strArr != null && strArr.length != 0) {
            return m21016i(observable, m21015j(strArr)).flatMap(new C1142b(strArr));
        }
        throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    /* renamed from: m */
    public Observable<Permission> m21012m(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f5361a.m21004e("Requesting permission " + str);
            if (m21019f(str)) {
                arrayList.add(Observable.just(new Permission(str, true, false)));
            } else if (m21017h(str)) {
                arrayList.add(Observable.just(new Permission(str, false, false)));
            } else {
                PublishSubject<Permission> m21007b = this.f5361a.m21007b(str);
                if (m21007b == null) {
                    arrayList2.add(str);
                    m21007b = PublishSubject.create();
                    this.f5361a.m21001h(str, m21007b);
                }
                arrayList.add(m21007b);
            }
        }
        if (!arrayList2.isEmpty()) {
            m21011n((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return Observable.concat(Observable.fromIterable(arrayList));
    }

    /* renamed from: c */
    public <T> ObservableTransformer<T, Boolean> m21022c(String... strArr) {
        return new C1140a(strArr);
    }

    /* renamed from: f */
    public boolean m21019f(String str) {
        return !m21018g() || this.f5361a.m21006c(str);
    }

    /* renamed from: g */
    boolean m21018g() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: h */
    public boolean m21017h(String str) {
        return m21018g() && this.f5361a.m21005d(str);
    }

    /* renamed from: l */
    public Observable<Boolean> m21013l(String... strArr) {
        return Observable.just(f5360b).compose(m21022c(strArr));
    }

    @TargetApi(23)
    /* renamed from: n */
    void m21011n(String[] strArr) {
        RxPermissionsFragment rxPermissionsFragment = this.f5361a;
        rxPermissionsFragment.m21004e("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f5361a.m21002g(strArr);
    }
}
