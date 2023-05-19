package com.ifengyu.intercom.p216ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.fragment.tab.DeviceFragment;
import com.ifengyu.intercom.p216ui.fragment.tab.MyFragment;
import com.ifengyu.intercom.p216ui.fragment.tab.RecentTalkFragment;
import com.ifengyu.library.utils.UIUtils;
import java.util.Objects;

/* renamed from: com.ifengyu.intercom.ui.MainFragment */
/* loaded from: classes2.dex */
public class MainFragment extends BaseFragment {
    @BindView(R.id.bottom_tab_layout)
    TabLayout mTabLayout;
    @BindView(R.id.home_container)
    ViewPager2 viewPager;

    /* renamed from: z */
    public final int[] f14718z = {R.drawable.tab_icon_device_normal, R.drawable.tab_icon_intercom_normal, R.drawable.tab_icon_mine_normal};

    /* renamed from: A */
    public final int[] f14716A = {R.drawable.tab_icon_device_select, R.drawable.tab_icon_intercom_select, R.drawable.tab_icon_mine_select};

    /* renamed from: B */
    public final String[] f14717B = UIUtils.m8601q(R.array.main_tab_title);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.MainFragment$a */
    /* loaded from: classes2.dex */
    public class C4339a implements TabLayout.OnTabSelectedListener {
        C4339a() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            MainFragment.this.m10630h3(tab, true);
            MainFragment.this.viewPager.setCurrentItem(tab.getPosition(), false);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            MainFragment.this.m10630h3(tab, false);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.MainFragment$b */
    /* loaded from: classes2.dex */
    public static class C4340b extends FragmentStateAdapter {

        /* renamed from: i */
        private final Fragment[] f14720i;

        public C4340b(@NonNull FragmentActivity fragmentActivity, Fragment[] fragmentArr) {
            super(fragmentActivity);
            this.f14720i = fragmentArr;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        /* renamed from: g */
        public Fragment mo10625g(int i) {
            return this.f14720i[i];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f14720i.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h3 */
    public void m10630h3(TabLayout.Tab tab, boolean z) {
        View customView = tab.getCustomView();
        Objects.requireNonNull(customView);
        ImageView imageView = (ImageView) customView.findViewById(R.id.iv_tab_icon);
        TextView textView = (TextView) customView.findViewById(R.id.tv_tab_title);
        if (z) {
            imageView.setImageResource(this.f14716A[tab.getPosition()]);
            textView.setTextColor(UIUtils.m8614d(R.color.text_select));
            return;
        }
        imageView.setImageResource(this.f14718z[tab.getPosition()]);
        textView.setTextColor(UIUtils.m8614d(R.color.black));
    }

    /* renamed from: j3 */
    private void m10628j3() {
        if (getActivity() == null) {
            return;
        }
        this.viewPager.setAdapter(new C4340b(getActivity(), new Fragment[]{DeviceFragment.m9976c4(), RecentTalkFragment.m9916x3(), MyFragment.m9953D3()}));
        this.viewPager.setUserInputEnabled(false);
        this.viewPager.setSaveEnabled(false);
        this.viewPager.setOffscreenPageLimit(3);
        this.mTabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new C4339a());
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setTabGravity(0);
        new TabLayoutMediator(this.mTabLayout, this.viewPager, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.ifengyu.intercom.ui.a
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i) {
                MainFragment.this.m10626l3(tab, i);
            }
        }).attach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m10626l3(TabLayout.Tab tab, int i) {
        tab.setCustomView(m10629i3(i));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_main, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m10628j3();
        return inflate;
    }

    /* renamed from: i3 */
    public View m10629i3(int i) {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.home_tab_content, (ViewGroup) null);
        ((ImageView) inflate.findViewById(R.id.iv_tab_icon)).setImageResource(this.f14718z[i]);
        ((TextView) inflate.findViewById(R.id.tv_tab_title)).setText(this.f14717B[i]);
        return inflate;
    }
}
