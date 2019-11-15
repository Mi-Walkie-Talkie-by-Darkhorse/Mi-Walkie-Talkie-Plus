package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import io.reactivex.b.g;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.p;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RxPermissions */
public class b {
    static final Object a = new Object();
    RxPermissionsFragment b;

    public b(@NonNull Activity activity) {
        this.b = a(activity);
    }

    private RxPermissionsFragment a(Activity activity) {
        RxPermissionsFragment b2 = b(activity);
        if (!(b2 == null)) {
            return b2;
        }
        RxPermissionsFragment rxPermissionsFragment = new RxPermissionsFragment();
        FragmentManager fragmentManager = activity.getFragmentManager();
        fragmentManager.beginTransaction().add(rxPermissionsFragment, "RxPermissions").commitAllowingStateLoss();
        fragmentManager.executePendingTransactions();
        return rxPermissionsFragment;
    }

    private RxPermissionsFragment b(Activity activity) {
        return (RxPermissionsFragment) activity.getFragmentManager().findFragmentByTag("RxPermissions");
    }

    public <T> p<T, Boolean> a(final String... strArr) {
        return new p<T, Boolean>() {
            public o<Boolean> a(k<T> kVar) {
                return b.this.a(kVar, strArr).buffer(strArr.length).flatMap(new g<List<a>, o<Boolean>>() {
                    /* renamed from: a */
                    public o<Boolean> apply(List<a> list) throws Exception {
                        if (list.isEmpty()) {
                            return k.empty();
                        }
                        for (a aVar : list) {
                            if (!aVar.b) {
                                return k.just(Boolean.valueOf(false));
                            }
                        }
                        return k.just(Boolean.valueOf(true));
                    }
                });
            }
        };
    }

    public k<Boolean> b(String... strArr) {
        return k.just(a).compose(a(strArr));
    }

    /* access modifiers changed from: private */
    public k<a> a(k<?> kVar, final String... strArr) {
        if (strArr != null && strArr.length != 0) {
            return a(kVar, d(strArr)).flatMap(new g<Object, k<a>>() {
                /* renamed from: a */
                public k<a> apply(Object obj) throws Exception {
                    return b.this.e(strArr);
                }
            });
        }
        throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
    }

    private k<?> d(String... strArr) {
        for (String d : strArr) {
            if (!this.b.d(d)) {
                return k.empty();
            }
        }
        return k.just(a);
    }

    private k<?> a(k<?> kVar, k<?> kVar2) {
        if (kVar == null) {
            return k.just(a);
        }
        return k.merge((o<? extends T>) kVar, (o<? extends T>) kVar2);
    }

    /* access modifiers changed from: private */
    @TargetApi(23)
    public k<a> e(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.b.e("Requesting permission " + str);
            if (a(str)) {
                arrayList.add(k.just(new a(str, true, false)));
            } else if (b(str)) {
                arrayList.add(k.just(new a(str, false, false)));
            } else {
                PublishSubject c = this.b.c(str);
                if (c == null) {
                    arrayList2.add(str);
                    c = PublishSubject.a();
                    this.b.a(str, c);
                }
                arrayList.add(c);
            }
        }
        if (!arrayList2.isEmpty()) {
            c((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return k.concat((o<? extends o<? extends T>>) k.fromIterable(arrayList));
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(23)
    public void c(String[] strArr) {
        this.b.e("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.b.a(strArr);
    }

    public boolean a(String str) {
        return !a() || this.b.a(str);
    }

    public boolean b(String str) {
        return a() && this.b.b(str);
    }

    /* access modifiers changed from: 0000 */
    public boolean a() {
        return VERSION.SDK_INT >= 23;
    }
}
