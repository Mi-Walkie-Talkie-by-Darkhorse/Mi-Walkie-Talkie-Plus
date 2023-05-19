package com.ifengyu.intercom.p189l.p198b.p200b;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p189l.p198b.p201c.ChannelTypeTabAdapter;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3CustomListFragment;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3RemoteListFragment;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;

/* renamed from: com.ifengyu.intercom.l.b.b.e */
/* loaded from: classes2.dex */
public class Mi3AddListenChDialogFragment extends DialogFragment {

    /* renamed from: a */
    private final String[] f14131a = {UIUtils.m8603o(R.string.channel_remote), UIUtils.m8603o(R.string.channel_custom)};

    /* renamed from: b */
    private final int f14132b;

    public Mi3AddListenChDialogFragment(int i) {
        this.f14132b = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B1 */
    public /* synthetic */ void m11794C1(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        if (OperationResult.ACTION_ADD_CH_TO_STATE.equals(operationResult.getAction()) || OperationResult.ACTION_UPDATE_CH_TO_STATE.equals(operationResult.getAction())) {
            dismiss();
        }
    }

    /* renamed from: x1 */
    private void m11791x1(Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder) {
        TabLayout m11798E = mi3AddListenChDialogBuilder.m11798E();
        ViewPager2 m11797F = mi3AddListenChDialogBuilder.m11797F();
        if (m11798E == null || m11797F == null) {
            return;
        }
        m11797F.setOffscreenPageLimit(-1);
        m11797F.setAdapter(new ChannelTypeTabAdapter(this, new Fragment[]{Mi3RemoteListFragment.m11731s3(this.f14132b), Mi3CustomListFragment.m11741v3(this.f14132b)}));
        new TabLayoutMediator(m11798E, m11797F, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.ifengyu.intercom.l.b.b.a
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i) {
                Mi3AddListenChDialogFragment.this.m11796A1(tab, i);
            }
        }).attach();
    }

    /* renamed from: y1 */
    private void m11790y1() {
        ((Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class)).m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.b.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3AddListenChDialogFragment.this.m11794C1((OperationResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z1 */
    public /* synthetic */ void m11796A1(TabLayout.Tab tab, int i) {
        tab.setCustomView(m11792w1(i));
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder = new Mi3AddListenChDialogBuilder(getActivity());
        mi3AddListenChDialogBuilder.m7286t(true);
        Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder2 = mi3AddListenChDialogBuilder;
        mi3AddListenChDialogBuilder2.m7285u(true);
        Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder3 = mi3AddListenChDialogBuilder2;
        mi3AddListenChDialogBuilder3.m7284v(1.0f);
        Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder4 = mi3AddListenChDialogBuilder3;
        mi3AddListenChDialogBuilder4.m7300b(0, R.string.common_cancel, 2, C3993c.f14128a);
        Mi3AddListenChDialogBuilder mi3AddListenChDialogBuilder5 = mi3AddListenChDialogBuilder4;
        QMUIDialog m7296f = mi3AddListenChDialogBuilder5.m7296f(R.style.DialogTheme1);
        m11790y1();
        m11791x1(mi3AddListenChDialogBuilder5);
        return m7296f;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
    }

    /* renamed from: w1 */
    public View m11792w1(int i) {
        TextView textView = new TextView(getContext());
        int m8614d = UIUtils.m8614d(R.color.color_black_333333);
        textView.setText(this.f14131a[i]);
        textView.setTextColor(m8614d);
        textView.setTextSize(0, UIUtils.m8594x(14.0f));
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setGravity(17);
        return textView;
    }
}
