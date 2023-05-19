package com.ifengyu.intercom.device.mi3gw.p162a.p163f;

import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.entity.DeviceGroupDetailAdapterMultipleEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.http.entity.TempMember;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.f.a */
/* loaded from: classes2.dex */
public class DeviceGroupDetailMemberNormalProvider extends BaseItemProvider<DeviceGroupDetailAdapterMultipleEntity> {

    /* renamed from: d */
    private final Fragment f12427d;

    public DeviceGroupDetailMemberNormalProvider(Fragment fragment) {
        this.f12427d = fragment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 1001;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_detail_member;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, DeviceGroupDetailAdapterMultipleEntity deviceGroupDetailAdapterMultipleEntity) {
        TempMember member = deviceGroupDetailAdapterMultipleEntity.getMember();
        ImageLoader.m8705f(this.f12427d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), member.getAvatar());
        if (!TextUtils.isEmpty(member.getNicknameIn())) {
            baseViewHolder.setText(R.id.tv_member_name, member.getNicknameIn());
        } else {
            baseViewHolder.setText(R.id.tv_member_name, member.getNickname());
        }
        baseViewHolder.setGone(R.id.iv_is_device, deviceGroupDetailAdapterMultipleEntity.getMember().getUserType() != 0);
    }
}
