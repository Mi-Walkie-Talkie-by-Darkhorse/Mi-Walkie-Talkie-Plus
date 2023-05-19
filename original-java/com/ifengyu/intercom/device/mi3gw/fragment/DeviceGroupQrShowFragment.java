package com.ifengyu.intercom.device.mi3gw.fragment;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.google.gson.Gson;
import com.huawei.hms.hmsscankit.ScanUtil;
import com.huawei.hms.hmsscankit.WriterException;
import com.huawei.hms.p147ml.scan.HmsBuildBitmapOption;
import com.huawei.hms.p147ml.scan.HmsScanBase;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.QRConstants;
import com.ifengyu.intercom.bean.QRContentEntity;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.p216ui.fragment.BaseQrShowFragment;
import com.ifengyu.library.utils.EncoderUtil;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;

/* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.r2 */
/* loaded from: classes2.dex */
public class DeviceGroupQrShowFragment extends BaseQrShowFragment {

    /* renamed from: z */
    private long f12700z;

    /* renamed from: v3 */
    public static DeviceGroupQrShowFragment m13400v3(long j) {
        DeviceGroupQrShowFragment deviceGroupQrShowFragment = new DeviceGroupQrShowFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("key_group_gid", j);
        deviceGroupQrShowFragment.setArguments(bundle);
        return deviceGroupQrShowFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12700z = bundle.getLong("key_group_gid");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseQrShowFragment
    /* renamed from: g3 */
    protected Bitmap mo9377g3() {
        QRContentEntity qRContentEntity = new QRContentEntity();
        qRContentEntity.setT(System.currentTimeMillis());
        qRContentEntity.setTyp(2);
        qRContentEntity.setCid(this.f12700z);
        qRContentEntity.setUid(DeviceDataShare.m13732s().m13740o());
        String m8673c = EncoderUtil.m8673c(new Gson().toJson(qRContentEntity));
        Uri.Builder buildUpon = Uri.parse(QRConstants.APP_QR_URL_BASE).buildUpon();
        buildUpon.appendPath(QRConstants.APP_QR_URL_PATH);
        buildUpon.appendQueryParameter(QRConstants.PARAMETER_NAME_TYPE, "1");
        buildUpon.appendQueryParameter("content", m8673c);
        String uri = buildUpon.build().toString();
        HmsBuildBitmapOption create = new HmsBuildBitmapOption.Creator().setBitmapMargin(0).setBitmapColor(-16777216).setBitmapBackgroundColor(-1).create();
        int m8616b = UIUtils.m8616b(235.0f);
        try {
            return ScanUtil.buildBitmap(uri, HmsScanBase.QRCODE_SCAN_TYPE, m8616b, m8616b, create);
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.fragment.BaseQrShowFragment
    /* renamed from: h3 */
    public void mo9376h3() {
        super.mo9376h3();
        TempGroup m13746l = DeviceDataShare.m13732s().m13746l(this.f12700z);
        this.ngivGroupAvatar.setAdapter(new NineGridImageViewAdapter(this));
        this.ngivGroupAvatar.setImagesData(SlTalkClient.m8519l(m13746l));
        this.tvName.setText(SlTalkClient.m8527d(m13746l));
        this.tvBottomPrompt.setText(R.string.group_qr_bottom_prompt);
    }
}
