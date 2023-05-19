package com.ifengyu.intercom.p189l.p198b.p201c;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p188k.ChannelListEveryTypeBinding;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.l.b.c.k1 */
/* loaded from: classes2.dex */
public class Mi3AllChanelFragment extends BaseFragment {

    /* renamed from: A */
    protected ChannelListEveryTypeBinding f14170A;

    /* renamed from: z */
    private final String[] f14171z = {UIUtils.m8603o(R.string.channel_remote), UIUtils.m8603o(R.string.channel_custom)};

    /* renamed from: h3 */
    private void m11787h3() {
        if (getActivity() == null) {
            return;
        }
        this.f14170A.f13919x.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3AllChanelFragment.this.m11785j3(view);
            }
        });
        this.f14170A.f13919x.m7338p(R.string.mi3_all_channels);
        ChannelListEveryTypeBinding channelListEveryTypeBinding = this.f14170A;
        TabLayout tabLayout = channelListEveryTypeBinding.f13918w;
        ViewPager2 viewPager2 = channelListEveryTypeBinding.f13920y;
        viewPager2.setOffscreenPageLimit(-1);
        viewPager2.setAdapter(new ChannelTypeTabAdapter(getActivity(), new Fragment[]{Mi3RemoteListFragment.m11731s3(105), Mi3CustomListFragment.m11741v3(105)}));
        viewPager2.setSaveEnabled(false);
        new TabLayoutMediator(tabLayout, viewPager2, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.ifengyu.intercom.l.b.c.a
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i) {
                Mi3AllChanelFragment.this.m11783l3(tab, i);
            }
        }).attach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m11785j3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m11783l3(TabLayout.Tab tab, int i) {
        tab.setCustomView(m11788g3(i));
    }

    /* renamed from: m3 */
    public static Mi3AllChanelFragment m11782m3() {
        return new Mi3AllChanelFragment();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        ChannelListEveryTypeBinding channelListEveryTypeBinding = (ChannelListEveryTypeBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.channel_list_every_type, null, false);
        this.f14170A = channelListEveryTypeBinding;
        channelListEveryTypeBinding.m23011A(getActivity());
        m11787h3();
        return this.f14170A.mo23006a();
    }

    /* renamed from: g3 */
    public View m11788g3(int i) {
        TextView textView = new TextView(getContext());
        int m8614d = UIUtils.m8614d(R.color.color_black_333333);
        textView.setText(this.f14171z[i]);
        textView.setTextColor(m8614d);
        textView.setTextSize(0, UIUtils.m8594x(14.0f));
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setGravity(17);
        return textView;
    }
}
