package com.ifengyu.intercom.p216ui.activity;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.device.lite.fragment.LiteProtocolFragment;
import com.ifengyu.intercom.device.mi3gw.fragment.Mi3PublicProtocolFragment;
import com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinProtocolFragment;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealProtocolFragment;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkProtocolFragment;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3ProtocolFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.fragment.AppUserProtocolFragment;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;

/* renamed from: com.ifengyu.intercom.ui.activity.UserProtocolActivity */
/* loaded from: classes2.dex */
public class UserProtocolActivity extends BaseFragmentActivity {
    /* renamed from: N */
    public static void m10425N(Context context) {
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, AppUserProtocolFragment.class, new Bundle()));
    }

    /* renamed from: O */
    public static void m10424O(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_device_sn", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, DolphinProtocolFragment.class, bundle));
    }

    /* renamed from: P */
    public static void m10423P(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_device_sn", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, LiteProtocolFragment.class, bundle));
    }

    /* renamed from: R */
    public static void m10422R(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_device_sn", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, Mi3ProtocolFragment.class, bundle));
    }

    /* renamed from: S */
    public static void m10421S(Context context, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("key_device_uid", j);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, Mi3PublicProtocolFragment.class, bundle));
    }

    /* renamed from: T */
    public static void m10420T(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_device_sn", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, SealProtocolFragment.class, bundle));
    }

    /* renamed from: U */
    public static void m10419U(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("key_device_sn", str);
        context.startActivity(QMUIFragmentActivity.m8133u(context, UserProtocolActivity.class, SharkProtocolFragment.class, bundle));
    }
}
