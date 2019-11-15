package com.ifengyu.intercom.ui.setting.dolphin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.OnTabSelectedListener;
import android.support.design.widget.TabLayout.Tab;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinChannelBaseFragment;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinCustomFragment;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinPresetFragment;
import com.ifengyu.intercom.ui.setting.dolphin.fragment.DolphinRelayFragment;
import java.util.ArrayList;
import java.util.List;

public class DolphinCHSettingActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public final String[] a = ad.b((int) R.array.dolphin_channel_tab_title);
    /* access modifiers changed from: private */
    public List<DolphinChannelBaseFragment> b = new ArrayList();
    @BindView(2131755209)
    LinearLayout bottomChannelTypeText;
    private int c;
    private boolean d;
    @BindView(2131755204)
    TextView mChannelName;
    @BindView(2131755213)
    ImageView mFab;
    @BindView(2131755212)
    View mFabLayout;
    @BindView(2131755203)
    ImageView mIbBack;
    @BindView(2131755210)
    TabLayout mTabLayout;
    @BindView(2131755211)
    ViewPager mViewPager;
    @BindView(2131755205)
    TextView normalChannelNumber;
    private UserChannel q;
    private SimpleOnPageChangeListener r = new SimpleOnPageChangeListener() {
        public void onPageSelected(int i) {
            DolphinCHSettingActivity.this.a(i);
            s.b(DolphinCHSettingActivity.this.e, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(8);
            } else {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(0);
            }
        }
    };
    @BindView(2131755206)
    LinearLayout specialChannelLayout;
    @BindView(2131755207)
    TextView specialRxChannelNumber;
    @BindView(2131755208)
    TextView specialTxChannelNumber;

    public class SectionsPagerAdapter extends FragmentPagerAdapter {
        public SectionsPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public Fragment getItem(int i) {
            return (Fragment) DolphinCHSettingActivity.this.b.get(i);
        }

        public int getCount() {
            return DolphinCHSettingActivity.this.a.length;
        }

        public CharSequence getPageTitle(int i) {
            return DolphinCHSettingActivity.this.a[i];
        }
    }

    public static void a(Context context, @NonNull UserChannel userChannel, boolean z) {
        Intent intent = new Intent(context, DolphinCHSettingActivity.class);
        intent.putExtra("extra_user_channel", userChannel);
        intent.putExtra("extra_is_first_channel", z);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_dolphin_channel_setting);
        ButterKnife.bind((Activity) this);
        e();
        this.d = w.ag();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fab /*2131755213*/:
                switch (c()) {
                    case 1:
                        ((DolphinCustomFragment) this.b.get(1)).f();
                        return;
                    case 2:
                        ((DolphinRelayFragment) this.b.get(2)).f();
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        ad.d();
    }

    private void e() {
        this.normalChannelNumber.setTypeface(l.c);
        this.specialRxChannelNumber.setTypeface(l.c);
        this.specialTxChannelNumber.setTypeface(l.c);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_is_first_channel", true);
        int l = w.l();
        this.mViewPager.setAdapter(new SectionsPagerAdapter(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.r);
        this.mViewPager.setOffscreenPageLimit(2);
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayout.setTabGravity(0);
        for (int i = 0; i < this.mTabLayout.getTabCount(); i++) {
            TextView textView = new TextView(this);
            textView.setTypeface(l.d);
            textView.setText(this.a[i]);
            textView.setGravity(17);
            this.mTabLayout.getTabAt(i).setCustomView((View) textView);
        }
        this.mTabLayout.addOnTabSelectedListener(new OnTabSelectedListener() {
            public void onTabSelected(Tab tab) {
                ((TextView) tab.getCustomView()).setTextColor(DolphinCHSettingActivity.this.getResources().getColor(R.color.select_color));
            }

            public void onTabUnselected(Tab tab) {
                ((TextView) tab.getCustomView()).setTextColor(DolphinCHSettingActivity.this.getResources().getColor(R.color.black80));
            }

            public void onTabReselected(Tab tab) {
            }
        });
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(ContextCompat.getDrawable(this, R.drawable.layout_divider_vertical));
        this.b.clear();
        DolphinPresetFragment a2 = DolphinPresetFragment.a(booleanExtra, l);
        DolphinCustomFragment a3 = DolphinCustomFragment.a(booleanExtra, l);
        DolphinRelayFragment a4 = DolphinRelayFragment.a(booleanExtra, l);
        this.b.add(a2);
        this.b.add(a3);
        this.b.add(a4);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        this.q = (UserChannel) getIntent().getParcelableExtra("extra_user_channel");
        if (this.q != null) {
            a(this.q);
            if (this.q.c() == 8) {
                this.mViewPager.setCurrentItem(2);
                ((TextView) this.mTabLayout.getTabAt(2).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
            } else if (this.q.c() == 2) {
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

    public void a(UserChannel userChannel) {
        if (userChannel != null) {
            b(userChannel);
            if (userChannel.c() == 8) {
                this.specialChannelLayout.setVisibility(0);
                this.bottomChannelTypeText.setVisibility(0);
                this.normalChannelNumber.setVisibility(8);
                this.specialRxChannelNumber.setText(v.c(userChannel.e()));
                this.specialTxChannelNumber.setText(v.c(userChannel.g()));
                this.mChannelName.setText(userChannel.d().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(8);
            this.bottomChannelTypeText.setVisibility(8);
            this.normalChannelNumber.setVisibility(0);
            if (userChannel.c() == 7) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_channel_scan));
            } else if (userChannel.c() == 6) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_team));
            } else {
                this.normalChannelNumber.setText(v.c(userChannel.e()));
            }
            this.mChannelName.setText(userChannel.d().trim());
        }
    }

    public int c() {
        return this.c;
    }

    public void a(int i) {
        this.c = i;
    }

    public UserChannel d() {
        return this.q;
    }

    public void b(UserChannel userChannel) {
        this.q = userChannel;
    }
}
