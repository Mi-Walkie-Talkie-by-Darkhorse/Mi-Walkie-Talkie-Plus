package com.ifengyu.intercom.ui.setting.shark;

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
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.fragment.SharkCustomFragment;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SharkChannelSettingActivity extends BaseActivity implements View.OnClickListener {
    @BindView(R.id.click_to_edit_channel)
    TextView clickToEdit;
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
    @BindView(R.id.normal_css_channel_layout)
    LinearLayout normalCssChannelLayout;
    @BindView(R.id.normal_rx_css_value)
    TextView normalRxCssValue;
    @BindView(R.id.normal_tx_css_value)
    TextView normalTxCssValue;
    private SealSharkChannel s;
    @BindView(R.id.special_channel_layout)
    LinearLayout specialChannelLayout;
    @BindView(R.id.special_css_channel_layout)
    LinearLayout specialCssChannelLayout;
    @BindView(R.id.special_rx_channel_number)
    TextView specialRxChannelNumber;
    @BindView(R.id.special_rx_css_value)
    TextView specialRxCssValue;
    @BindView(R.id.special_tx_channel_number)
    TextView specialTxChannelNumber;
    @BindView(R.id.special_tx_css_value)
    TextView specialTxCssValue;
    private boolean t;
    private boolean u;
    private final String[] q = k0.d(R.array.channel_tab_title);
    private List<com.ifengyu.intercom.ui.setting.shark.fragment.a> r = new ArrayList();
    private ViewPager.k v = new a();

    /* loaded from: classes2.dex */
    class a extends ViewPager.k {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.h
        public void onPageSelected(int i) {
            String str = ((BaseActivity) SharkChannelSettingActivity.this).f6370a;
            z.a(str, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(0);
            } else {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(8);
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
            ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.select_color));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.black80));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c extends FragmentPagerAdapter {
        public c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return SharkChannelSettingActivity.this.q.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return (Fragment) SharkChannelSettingActivity.this.r.get(i);
        }

        @Override // androidx.viewpager.widget.a
        public CharSequence getPageTitle(int i) {
            return SharkChannelSettingActivity.this.q[i];
        }
    }

    private void A() {
        this.normalChannelNumber.setTypeface(p.f5324b);
        this.specialRxChannelNumber.setTypeface(p.f5324b);
        this.specialTxChannelNumber.setTypeface(p.f5324b);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_shark_is_major_channel", true);
        d0.K();
        this.mViewPager.setAdapter(new c(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.v);
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
        SharkCustomFragment b2 = SharkCustomFragment.b(booleanExtra);
        com.ifengyu.intercom.ui.setting.shark.fragment.b b3 = com.ifengyu.intercom.ui.setting.shark.fragment.b.b(booleanExtra);
        this.r.add(b2);
        this.r.add(b3);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        this.clickToEdit.setOnClickListener(this);
        SealSharkChannel sealSharkChannel = (SealSharkChannel) getIntent().getParcelableExtra("extra_shark_channel");
        this.s = sealSharkChannel;
        if (sealSharkChannel != null) {
            a(sealSharkChannel);
            if (this.s.n() == 2) {
                this.mViewPager.setCurrentItem(0);
                ((TextView) this.mTabLayout.getTabAt(0).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
                return;
            }
            this.mViewPager.setCurrentItem(1);
            ((TextView) this.mTabLayout.getTabAt(1).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
            this.mFabLayout.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.click_to_edit_channel) {
            SealSharkChannel sealSharkChannel = this.s;
            if (sealSharkChannel == null) {
                return;
            }
            if (sealSharkChannel.d()) {
                this.t = true;
                this.u = false;
                ((com.ifengyu.intercom.ui.setting.shark.fragment.b) this.r.get(1)).f(this.s);
                return;
            }
            this.t = false;
            this.u = true;
            ((SharkCustomFragment) this.r.get(0)).g(this.s);
        } else if (id == R.id.fab) {
            ((SharkCustomFragment) this.r.get(0)).n();
        } else if (id == R.id.title_bar_left) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_shark_channel_setting);
        ButterKnife.bind(this);
        A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k0.f();
    }

    public SealSharkChannel w() {
        return this.s;
    }

    public int x() {
        return this.mViewPager.getCurrentItem();
    }

    public boolean y() {
        return this.u;
    }

    public boolean z() {
        return this.t;
    }

    public static void a(Context context, @NonNull SealSharkChannel sealSharkChannel, boolean z) {
        Intent intent = new Intent(context, SharkChannelSettingActivity.class);
        intent.putExtra("extra_shark_channel", sealSharkChannel);
        intent.putExtra("extra_shark_is_major_channel", z);
        context.startActivity(intent);
    }

    public void b(SealSharkChannel sealSharkChannel) {
        this.s = sealSharkChannel;
    }

    public void c(boolean z) {
        this.t = z;
    }

    public void b(boolean z) {
        this.u = z;
    }

    public void a(SealSharkChannel sealSharkChannel) {
        if (sealSharkChannel != null) {
            b(sealSharkChannel);
            if (sealSharkChannel.d()) {
                this.specialChannelLayout.setVisibility(8);
                this.specialCssChannelLayout.setVisibility(8);
                this.normalChannelNumber.setVisibility(0);
                this.normalCssChannelLayout.setVisibility(0);
                this.normalChannelNumber.setText(c0.b(sealSharkChannel.i()));
                if (sealSharkChannel.h() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                    this.normalCssChannelLayout.setVisibility(4);
                } else {
                    this.normalRxCssValue.setText(k0.a((int) R.string.receive_css_code_s, c0.h(sealSharkChannel.h())));
                    this.normalTxCssValue.setText(k0.a((int) R.string.translate_css_code_s, c0.h(sealSharkChannel.k())));
                }
                this.mChannelName.setText(sealSharkChannel.e().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(0);
            this.specialCssChannelLayout.setVisibility(0);
            this.normalChannelNumber.setVisibility(8);
            this.normalCssChannelLayout.setVisibility(8);
            this.specialRxChannelNumber.setText(c0.b(sealSharkChannel.i()));
            this.specialTxChannelNumber.setText(c0.b(sealSharkChannel.l()));
            if (sealSharkChannel.h() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                this.specialCssChannelLayout.setVisibility(4);
            } else {
                this.specialRxCssValue.setText(k0.a((int) R.string.receive_css_code_s, c0.h(sealSharkChannel.h())));
                this.specialTxCssValue.setText(k0.a((int) R.string.translate_css_code_s, c0.h(sealSharkChannel.k())));
            }
            this.mChannelName.setText(sealSharkChannel.e().trim());
        }
    }
}
