package com.ifengyu.intercom.ui.setting.shark;

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
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.shark.fragment.SharkChannelBaseFragment;
import com.ifengyu.intercom.ui.setting.shark.fragment.SharkCustomFragment;
import com.ifengyu.intercom.ui.setting.shark.fragment.SharkPresetFragment;
import java.util.ArrayList;
import java.util.List;

public class SharkChannelSettingActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public final String[] a = ad.b((int) R.array.channel_tab_title);
    /* access modifiers changed from: private */
    public List<SharkChannelBaseFragment> b = new ArrayList();
    private SealSharkChannel c;
    @BindView(2131755332)
    TextView clickToEdit;
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
    @BindView(2131755326)
    LinearLayout normalCssChannelLayout;
    @BindView(2131755327)
    TextView normalRxCssValue;
    @BindView(2131755328)
    TextView normalTxCssValue;
    private boolean q;
    private SimpleOnPageChangeListener r = new SimpleOnPageChangeListener() {
        public void onPageSelected(int i) {
            s.b(SharkChannelSettingActivity.this.e, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(0);
            } else {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(8);
            }
        }
    };
    @BindView(2131755206)
    LinearLayout specialChannelLayout;
    @BindView(2131755329)
    LinearLayout specialCssChannelLayout;
    @BindView(2131755207)
    TextView specialRxChannelNumber;
    @BindView(2131755330)
    TextView specialRxCssValue;
    @BindView(2131755208)
    TextView specialTxChannelNumber;
    @BindView(2131755331)
    TextView specialTxCssValue;

    private class a extends FragmentPagerAdapter {
        public a(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public Fragment getItem(int i) {
            return (Fragment) SharkChannelSettingActivity.this.b.get(i);
        }

        public int getCount() {
            return SharkChannelSettingActivity.this.a.length;
        }

        public CharSequence getPageTitle(int i) {
            return SharkChannelSettingActivity.this.a[i];
        }
    }

    public static void a(Context context, @NonNull SealSharkChannel sealSharkChannel, boolean z) {
        Intent intent = new Intent(context, SharkChannelSettingActivity.class);
        intent.putExtra("extra_shark_channel", sealSharkChannel);
        intent.putExtra("extra_shark_is_major_channel", z);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_shark_channel_setting);
        ButterKnife.bind((Activity) this);
        q();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fab /*2131755213*/:
                ((SharkCustomFragment) this.b.get(0)).h();
                return;
            case R.id.click_to_edit_channel /*2131755332*/:
                if (this.c == null) {
                    return;
                }
                if (this.c.o()) {
                    this.d = true;
                    this.q = false;
                    ((SharkPresetFragment) this.b.get(1)).f(this.c);
                    return;
                }
                this.d = false;
                this.q = true;
                ((SharkCustomFragment) this.b.get(0)).f(this.c);
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        ad.d();
    }

    private void q() {
        this.normalChannelNumber.setTypeface(l.c);
        this.specialRxChannelNumber.setTypeface(l.c);
        this.specialTxChannelNumber.setTypeface(l.c);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_shark_is_major_channel", true);
        w.G();
        this.mViewPager.setAdapter(new a(getSupportFragmentManager()));
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
                ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.select_color));
            }

            public void onTabUnselected(Tab tab) {
                ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.black80));
            }

            public void onTabReselected(Tab tab) {
            }
        });
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(ContextCompat.getDrawable(this, R.drawable.layout_divider_vertical));
        this.b.clear();
        SharkCustomFragment b2 = SharkCustomFragment.b(booleanExtra);
        SharkPresetFragment b3 = SharkPresetFragment.b(booleanExtra);
        this.b.add(b2);
        this.b.add(b3);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        this.clickToEdit.setOnClickListener(this);
        this.c = (SealSharkChannel) getIntent().getParcelableExtra("extra_shark_channel");
        if (this.c != null) {
            a(this.c);
            if (this.c.c() == 2) {
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

    public void a(SealSharkChannel sealSharkChannel) {
        if (sealSharkChannel != null) {
            b(sealSharkChannel);
            if (sealSharkChannel.o()) {
                this.specialChannelLayout.setVisibility(8);
                this.specialCssChannelLayout.setVisibility(8);
                this.normalChannelNumber.setVisibility(0);
                this.normalCssChannelLayout.setVisibility(0);
                this.normalChannelNumber.setText(v.c(sealSharkChannel.e()));
                if (sealSharkChannel.j() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                    this.normalCssChannelLayout.setVisibility(4);
                } else {
                    this.normalRxCssValue.setText(ad.a((int) R.string.receive_css_code_s, v.e(sealSharkChannel.j())));
                    this.normalTxCssValue.setText(ad.a((int) R.string.translate_css_code_s, v.e(sealSharkChannel.k())));
                }
                this.mChannelName.setText(sealSharkChannel.g().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(0);
            this.specialCssChannelLayout.setVisibility(0);
            this.normalChannelNumber.setVisibility(8);
            this.normalCssChannelLayout.setVisibility(8);
            this.specialRxChannelNumber.setText(v.c(sealSharkChannel.e()));
            this.specialTxChannelNumber.setText(v.c(sealSharkChannel.f()));
            if (sealSharkChannel.j() % 256 == 0 && sealSharkChannel.k() % 256 == 0) {
                this.specialCssChannelLayout.setVisibility(4);
            } else {
                this.specialRxCssValue.setText(ad.a((int) R.string.receive_css_code_s, v.e(sealSharkChannel.j())));
                this.specialTxCssValue.setText(ad.a((int) R.string.translate_css_code_s, v.e(sealSharkChannel.k())));
            }
            this.mChannelName.setText(sealSharkChannel.g().trim());
        }
    }

    public int c() {
        return this.mViewPager.getCurrentItem();
    }

    public SealSharkChannel d() {
        return this.c;
    }

    public void b(SealSharkChannel sealSharkChannel) {
        this.c = sealSharkChannel;
    }

    public boolean e() {
        return this.d;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public boolean f() {
        return this.q;
    }

    public void b(boolean z) {
        this.q = z;
    }
}
