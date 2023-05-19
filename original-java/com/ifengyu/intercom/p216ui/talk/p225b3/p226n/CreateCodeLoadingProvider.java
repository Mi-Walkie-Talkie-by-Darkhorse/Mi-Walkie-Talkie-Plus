package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.graphics.drawable.AnimationDrawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.CreateCodeAdapterEntity;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.c */
/* loaded from: classes2.dex */
public class CreateCodeLoadingProvider extends BaseItemProvider<CreateCodeAdapterEntity> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_create_group_bt_code_loading;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, CreateCodeAdapterEntity createCodeAdapterEntity) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_loading_animation);
        if (((AnimationDrawable) imageView.getDrawable()).isRunning()) {
            return;
        }
        ((AnimationDrawable) imageView.getDrawable()).start();
    }
}
