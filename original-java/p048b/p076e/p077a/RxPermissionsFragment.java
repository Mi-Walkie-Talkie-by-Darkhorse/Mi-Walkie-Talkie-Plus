package p048b.p076e.p077a;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.e.a.c */
/* loaded from: classes2.dex */
public class RxPermissionsFragment extends Fragment {

    /* renamed from: a */
    private Map<String, PublishSubject<Permission>> f5366a = new HashMap();

    /* renamed from: b */
    private boolean f5367b;

    /* renamed from: a */
    public boolean m21008a(@NonNull String str) {
        return this.f5366a.containsKey(str);
    }

    /* renamed from: b */
    public PublishSubject<Permission> m21007b(@NonNull String str) {
        return this.f5366a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    /* renamed from: c */
    public boolean m21006c(String str) {
        return getActivity().checkSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    /* renamed from: d */
    public boolean m21005d(String str) {
        return getActivity().getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m21004e(String str) {
        if (this.f5367b) {
            Log.d("RxPermissions", str);
        }
    }

    /* renamed from: f */
    void m21003f(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            m21004e("onRequestPermissionsResult  " + strArr[i]);
            PublishSubject<Permission> publishSubject = this.f5366a.get(strArr[i]);
            if (publishSubject == null) {
                Log.e("RxPermissions", "RxPermissions.onRequestPermissionsResult invoked but didn't find the corresponding permission request.");
                return;
            }
            this.f5366a.remove(strArr[i]);
            publishSubject.onNext(new Permission(strArr[i], iArr[i] == 0, zArr[i]));
            publishSubject.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(23)
    /* renamed from: g */
    public void m21002g(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }

    /* renamed from: h */
    public PublishSubject<Permission> m21001h(@NonNull String str, @NonNull PublishSubject<Permission> publishSubject) {
        return this.f5366a.put(str, publishSubject);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    @TargetApi(23)
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 42) {
            return;
        }
        boolean[] zArr = new boolean[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            zArr[i2] = shouldShowRequestPermissionRationale(strArr[i2]);
        }
        m21003f(strArr, iArr, zArr);
    }
}
