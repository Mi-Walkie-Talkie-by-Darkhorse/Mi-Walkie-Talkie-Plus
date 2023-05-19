package com.ifengyu.intercom.device.mi3gw.fragment;

import android.net.Uri;
import com.ifengyu.intercom.bean.QRConstants;
import com.ifengyu.intercom.bean.QRContentEntity;
import com.ifengyu.intercom.p216ui.fragment.QrScanFragment;
import com.qmuiteam.qmui.arch.QMUIFragment;
import java.util.Set;

/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.o2 */
/* loaded from: classes2.dex */
public class AddGroupForDeviceQrScanFragment extends QrScanFragment {
    /* renamed from: X3 */
    public static AddGroupForDeviceQrScanFragment m13432X3() {
        return new AddGroupForDeviceQrScanFragment();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.QrScanFragment
    /* renamed from: T3 */
    protected void mo10066T3(Uri uri, Set<String> set) {
        if (set.size() == 1) {
            m10065U3();
        } else if ("1".equals(uri.getQueryParameter(QRConstants.PARAMETER_NAME_TYPE))) {
            m10054o3(uri.getQueryParameter("content"));
        } else {
            m10065U3();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.QrScanFragment
    /* renamed from: q3 */
    protected QMUIFragment mo10052q3(QRContentEntity qRContentEntity) {
        return GroupQrForDeviceScanResultFragment.m13501A3(qRContentEntity);
    }
}
