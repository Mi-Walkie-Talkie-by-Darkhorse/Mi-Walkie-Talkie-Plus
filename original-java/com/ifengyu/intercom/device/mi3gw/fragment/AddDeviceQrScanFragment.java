package com.ifengyu.intercom.device.mi3gw.fragment;

import android.net.Uri;
import com.ifengyu.intercom.bean.QRConstants;
import com.ifengyu.intercom.p216ui.fragment.QrScanFragment;
import java.util.Set;

/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.n2 */
/* loaded from: classes2.dex */
public class AddDeviceQrScanFragment extends QrScanFragment {
    /* renamed from: X3 */
    public static AddDeviceQrScanFragment m13433X3() {
        return new AddDeviceQrScanFragment();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.QrScanFragment
    /* renamed from: T3 */
    protected void mo10066T3(Uri uri, Set<String> set) {
        if (set.size() == 1) {
            m10055n3(uri.getQueryParameter(QRConstants.PARAMETER_NAME_UUID));
        } else {
            m10065U3();
        }
    }
}
