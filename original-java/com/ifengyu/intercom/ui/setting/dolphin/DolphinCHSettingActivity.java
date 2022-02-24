package com.ifengyu.intercom.ui.setting.dolphin;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinCustomFragment;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinPresetFragment;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinRelayFragment;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DolphinCHSettingActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.bottom_channel_type_text)
    LinearLayout bottomChannelTypeText;
    @BindView(R.id.channel_name)
    TextView mChannelName;
    @BindView(R.id.fab)
    ImageView mFab;
    @BindView(R.id.bottom_transparent_layout)
    View mFabLayout;
    @BindView(R.id.title_bar_left)
    ImageView mIbBack;
    @BindView(R.id.tab_layout)
    TabLayout mTabLayout;
    @BindView(R.id.container)
    ViewPager mViewPager;
    @BindView(R.id.normal_channel_number)
    TextView normalChannelNumber;
    private int s;
    @BindView(R.id.special_channel_layout)
    LinearLayout specialChannelLayout;
    @BindView(R.id.special_rx_channel_number)
    TextView specialRxChannelNumber;
    @BindView(R.id.special_tx_channel_number)
    TextView specialTxChannelNumber;
    private UserChannel t;
    private final String[] q = k0.d(R.array.dolphin_channel_tab_title);
    private List<com.ifengyu.intercom.ui.setting.dolphin.fragment.a> r = new ArrayList();
    private ViewPager.k u = new a();

    /* loaded from: classes2.dex */
    class a extends ViewPager.k {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i) {
            DolphinCHSettingActivity.this.e(i);
            String str = ((BaseActivity) DolphinCHSettingActivity.this).f6370a;
            z.a(str, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(8);
            } else {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            ((TextView) tab.getCustomView()).setTextColor(DolphinCHSettingActivity.this.getResources().getColor(R.color.select_color));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            ((TextView) tab.getCustomView()).setTextColor(DolphinCHSettingActivity.this.getResources().getColor(R.color.black80));
        }
    }

    /* loaded from: classes2.dex */
    public class c extends FragmentPagerAdapter {
        public c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return DolphinCHSettingActivity.this.q.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return (Fragment) DolphinCHSettingActivity.this.r.get(i);
        }

        @Override // androidx.viewpager.widget.a
        public CharSequence getPageTitle(int i) {
            return DolphinCHSettingActivity.this.q[i];
        }
    }

    private void y() {
        this.normalChannelNumber.setTypeface(p.f5324b);
        this.specialRxChannelNumber.setTypeface(p.f5324b);
        this.specialTxChannelNumber.setTypeface(p.f5324b);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_is_first_channel", true);
        int l = d0.l();
        this.mViewPager.setAdapter(new c(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.u);
        this.mViewPager.setOffscreenPageLimit(2);
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayout.setTabGravity(0);
        for (int i = 0; i < this.mTabLayout.getTabCount(); i++) {
            TextView textView = new TextView(this);
            textView.setTypeface(p.f5325c);
            textView.setText(this.q[i]);
            textView.setGravity(17);
            this.mTabLayout.getTabAt(i).setCustomView(textView);
        }
        this.mTabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(androidx.core.content.b.c(this, R.drawable.layout_divider_vertical));
        this.r.clear();
        DolphinPresetFragment a2 = DolphinPresetFragment.a(booleanExtra, l);
        DolphinCustomFragment a3 = DolphinCustomFragment.a(booleanExtra, l);
        DolphinRelayFragment a4 = DolphinRelayFragment.a(booleanExtra, l);
        this.r.add(a2);
        this.r.add(a3);
        this.r.add(a4);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        UserChannel userChannel = (UserChannel) getIntent().getParcelableExtra("extra_user_channel");
        this.t = userChannel;
        if (userChannel != null) {
            a(userChannel);
            if (this.t.h() == 8) {
                this.mViewPager.setCurrentItem(2);
                ((TextView) this.mTabLayout.getTabAt(2).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
            } else if (this.t.h() == 2) {
                this.mViewPager.setCurrentItem(1);
                ((TextView) this.mTabLayout.getTabAt(1).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
            } else {
                this.mViewPager.setCurrentItem(0);
                ((TextView) this.mTabLayout.getTabAt(0).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(8);
            }
        }
    }

    public void e(int i) {
        this.s = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.fab) {
            int x = x();
            if (x == 1) {
                ((DolphinCustomFragment) this.r.get(1)).l();
            } else if (x == 2) {
                ((DolphinRelayFragment) this.r.get(2)).l();
            }
        } else if (id == R.id.title_bar_left) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dolphin_channel_setting);
        ButterKnife.bind(this);
        y();
        d0.U();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k0.f();
    }

    public UserChannel w() {
        return this.t;
    }

    public int x() {
        return this.s;
    }

    public static void a(Context context, @NonNull UserChannel userChannel, boolean z) {
        Intent intent = new Intent(context, DolphinCHSettingActivity.class);
        intent.putExtra("extra_user_channel", userChannel);
        intent.putExtra("extra_is_first_channel", z);
        context.startActivity(intent);
    }

    public void b(UserChannel userChannel) {
        this.t = userChannel;
    }

    public void a(UserChannel userChannel) {
        if (userChannel != null) {
            b(userChannel);
            if (userChannel.h() == 8) {
                this.specialChannelLayout.setVisibility(0);
                this.bottomChannelTypeText.setVisibility(0);
                this.normalChannelNumber.setVisibility(8);
                this.specialRxChannelNumber.setText(c0.b(userChannel.a()));
                this.specialTxChannelNumber.setText(c0.b(userChannel.b()));
                this.mChannelName.setText(userChannel.d().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(8);
            this.bottomChannelTypeText.setVisibility(8);
            this.normalChannelNumber.setVisibility(0);
            if (userChannel.h() == 7) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_channel_scan));
            } else if (userChannel.h() == 6) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_team));
            } else {
                this.normalChannelNumber.setText(c0.b(userChannel.a()));
            }
            this.mChannelName.setText(userChannel.d().trim());
        }
    }
}
