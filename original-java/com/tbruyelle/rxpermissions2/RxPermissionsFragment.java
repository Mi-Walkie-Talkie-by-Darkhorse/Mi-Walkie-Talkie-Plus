package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.util.Log;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Map;

public class RxPermissionsFragment extends Fragment {
    private Map<String, PublishSubject<a>> a = new HashMap();
    private boolean b;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(23)
    public void a(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }

    @TargetApi(23)
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 42) {
            boolean[] zArr = new boolean[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                zArr[i2] = shouldShowRequestPermissionRationale(strArr[i2]);
            }
            a(strArr, iArr, zArr);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(String[] strArr, int[] iArr, boolean[] zArr) {
        boolean z;
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            e("onRequestPermissionsResult  " + strArr[i]);
            PublishSubject publishSubject = (PublishSubject) this.a.get(strArr[i]);
            if (publishSubject == null) {
                Log.e("RxPermissions", "RxPermissions.onRequestPermissionsResult invoked but didn't find the corresponding permission request.");
                return;
            }
            this.a.remove(strArr[i]);
            if (iArr[i] == 0) {
                z = true;
            } else {
                z = false;
            }
            publishSubject.onNext(new a(strArr[i], z, zArr[i]));
            publishSubject.onComplete();
        }
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(23)
    public boolean a(String str) {
        return getActivity().checkSelfPermission(str) == 0;
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(23)
    public boolean b(String str) {
        return getActivity().getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
    }

    public PublishSubject<a> c(@NonNull String str) {
        return (PublishSubject) this.a.get(str);
    }

    public boolean d(@NonNull String str) {
        return this.a.containsKey(str);
    }

    public PublishSubject<a> a(@NonNull String str, @NonNull PublishSubject<a> publishSubject) {
        return (PublishSubject) this.a.put(str, publishSubject);
    }

    /* access modifiers changed from: 0000 */
    public void e(String str) {
        if (this.b) {
            Log.d("RxPermissions", str);
        }
    }
}
