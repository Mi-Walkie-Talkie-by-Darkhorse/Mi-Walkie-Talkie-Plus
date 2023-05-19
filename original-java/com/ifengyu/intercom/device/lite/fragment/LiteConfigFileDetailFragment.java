package com.ifengyu.intercom.device.lite.fragment;

import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.device.lite.p161e.LiteViewModel;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.lite.fragment.i1 */
/* loaded from: classes2.dex */
public class LiteConfigFileDetailFragment extends BaseConfigFileDetailFragment {

    /* renamed from: D */
    private LiteViewModel f12369D;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m13854x3(String str) {
        if (str != null) {
            m10312X2(R.string.import_config_file_failed);
            return;
        }
        m10306d3(R.string.import_config_file_success);
        RxBus.m11806d().m11805e(LiteEvent.IMPORTED);
    }

    /* renamed from: y3 */
    public static LiteConfigFileDetailFragment m13853y3(ConfigFileModel configFileModel) {
        LiteConfigFileDetailFragment liteConfigFileDetailFragment = new LiteConfigFileDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("config_file", configFileModel);
        liteConfigFileDetailFragment.setArguments(bundle);
        return liteConfigFileDetailFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment
    /* renamed from: i3 */
    public void mo11762i3() {
        super.mo11762i3();
        LiteViewModel liteViewModel = (LiteViewModel) new ViewModelProvider(this).m22691a(LiteViewModel.class);
        this.f12369D = liteViewModel;
        liteViewModel.m14040k().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.h0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteConfigFileDetailFragment.this.m13854x3((String) obj);
            }
        });
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment
    /* renamed from: u3 */
    protected void mo11761u3(List<ChannelModel> list) {
        m10308b3();
        this.f12369D.m14031t(list);
    }
}
