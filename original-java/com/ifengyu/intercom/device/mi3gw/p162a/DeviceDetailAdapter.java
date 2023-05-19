package com.ifengyu.intercom.device.mi3gw.p162a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.b */
/* loaded from: classes2.dex */
public class DeviceDetailAdapter extends BaseQuickAdapter<TempGroup, BaseViewHolder> {

    /* renamed from: z */
    private NineGridImageViewAdapter<Fragment> f12425z;

    public DeviceDetailAdapter(Fragment fragment, int i, @Nullable List<TempGroup> list) {
        super(i, list);
        this.f12425z = new NineGridImageViewAdapter<>(fragment);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, TempGroup tempGroup) {
        QMUIFrameLayout qMUIFrameLayout = (QMUIFrameLayout) baseViewHolder.getView(R.id.group_container_layout);
        if (baseViewHolder.getLayoutPosition() - m17063K() == 0) {
            qMUIFrameLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), 3, UIUtils.m8616b(5.0f), 0.5f);
        } else {
            qMUIFrameLayout.setRadiusAndShadow(0, 0, BitmapDescriptorFactory.HUE_RED);
        }
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8527d(tempGroup));
        baseViewHolder.setText(R.id.tv_count, UIUtils.m8602p(R.string.s_member_count, Integer.valueOf(tempGroup.getUserCount())));
        NineGridImageView nineGridImageView = (NineGridImageView) baseViewHolder.getView(R.id.ngiv_group_avatar);
        nineGridImageView.setAdapter(this.f12425z);
        nineGridImageView.setImagesData(SlTalkClient.m8519l(tempGroup));
    }
}
