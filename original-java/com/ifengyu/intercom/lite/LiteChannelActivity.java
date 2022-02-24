package com.ifengyu.intercom.lite;

import android.content.Context;
import android.os.Bundle;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.base.BaseFragmentActivity;
import com.ifengyu.intercom.lite.fragment.LiteChannelFragment;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.qmuiteam.qmui.arch.QMUIFragmentActivity;
import com.qmuiteam.qmui.arch.annotation.DefaultFirstFragment;
import com.qmuiteam.qmui.arch.annotation.FirstFragments;

@DefaultFirstFragment(LiteChannelFragment.class)
@FirstFragments({LiteChannelFragment.class})
/* loaded from: classes2.dex */
public class LiteChannelActivity extends BaseFragmentActivity {
    public static void a(Context context, ChannelModel channelModel) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        context.startActivity(QMUIFragmentActivity.a(context, LiteChannelActivity.class, LiteChannelFragment.class, bundle));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragmentActivity, com.qmuiteam.qmui.arch.c
    public int g() {
        return R.layout.activity_lite_channel;
    }
}
