package com.ifengyu.intercom.p216ui.talk;

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
import com.ifengyu.intercom.p216ui.fragment.BaseQrShowFragment;
import com.ifengyu.library.utils.EncoderUtil;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Group;

/* renamed from: com.ifengyu.intercom.ui.talk.a3 */
/* loaded from: classes2.dex */
public class GroupQrShowFragment extends BaseQrShowFragment {

    /* renamed from: z */
    private Group f15605z;

    /* renamed from: v3 */
    public static GroupQrShowFragment m9375v3(Group group) {
        GroupQrShowFragment groupQrShowFragment = new GroupQrShowFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        groupQrShowFragment.setArguments(bundle);
        return groupQrShowFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15605z = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.BaseQrShowFragment
    /* renamed from: g3 */
    protected Bitmap mo9377g3() {
        QRContentEntity qRContentEntity = new QRContentEntity();
        qRContentEntity.setT(System.currentTimeMillis());
        qRContentEntity.setTyp(2);
        qRContentEntity.setCid(this.f15605z.getGid());
        qRContentEntity.setUid(SlTalkClient.m8513r().m8530a().m8455f());
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
        this.ngivGroupAvatar.setAdapter(new NineGridImageViewAdapter(this));
        this.ngivGroupAvatar.setImagesData(SlTalkClient.m8528c(this.f15605z));
        this.tvName.setText(SlTalkClient.m8526e(this.f15605z));
        this.tvBottomPrompt.setText(R.string.group_qr_bottom_prompt);
    }
}
