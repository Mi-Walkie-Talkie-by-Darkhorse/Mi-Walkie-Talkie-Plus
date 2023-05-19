package com.ifengyu.intercom.p189l.p198b.p201c;

import android.os.Bundle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import java.util.List;

/* renamed from: com.ifengyu.intercom.l.b.c.o1 */
/* loaded from: classes2.dex */
public class Mi3ConfigFileDetailFragment extends BaseConfigFileDetailFragment {

    /* renamed from: D */
    private Mi3ViewModel f14182D;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m11759x3(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        int status = operationResult.getStatus();
        String action = operationResult.getAction();
        action.hashCode();
        if (action.equals(OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS)) {
            if (status == 1) {
                m10306d3(R.string.import_config_file_success);
            } else {
                m10312X2(R.string.import_config_file_failed);
            }
            this.f14182D.m11459y().setValue(null);
        }
    }

    /* renamed from: y3 */
    public static Mi3ConfigFileDetailFragment m11758y3(ConfigFileModel configFileModel) {
        Mi3ConfigFileDetailFragment mi3ConfigFileDetailFragment = new Mi3ConfigFileDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("config_file", configFileModel);
        mi3ConfigFileDetailFragment.setArguments(bundle);
        return mi3ConfigFileDetailFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment
    /* renamed from: i3 */
    public void mo11762i3() {
        super.mo11762i3();
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14182D = mi3ViewModel;
        mi3ViewModel.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ConfigFileDetailFragment.this.m11759x3((OperationResult) obj);
            }
        });
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f14182D.m11497b0();
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileDetailFragment
    /* renamed from: u3 */
    protected void mo11761u3(List<ChannelModel> list) {
        m10308b3();
        this.f14182D.m11524B(list);
    }
}
