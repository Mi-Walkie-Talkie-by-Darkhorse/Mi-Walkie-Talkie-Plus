package com.ifengyu.intercom.ui.setting.seal;

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
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.seal.fragment.SealChannelBaseFragment;
import com.ifengyu.intercom.ui.setting.seal.fragment.SealCustomFragment;
import com.ifengyu.intercom.ui.setting.seal.fragment.SealPresetFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SealChannelSettingActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public final String[] a = ad.b((int) R.array.channel_tab_title);
    /* access modifiers changed from: private */
    public List<SealChannelBaseFragment> b = new ArrayList();
    private SealSharkChannel c;
    @BindView(2131755332)
    TextView clickToEdit;
    private SimpleOnPageChangeListener d = new SimpleOnPageChangeListener() {
        public void onPageSelected(int i) {
            s.b(SealChannelSettingActivity.this.e, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                SealChannelSettingActivity.this.mFabLayout.setVisibility(0);
            } else {
                SealChannelSettingActivity.this.mFabLayout.setVisibility(8);
            }
        }
    };
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
    private boolean r;
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
            return (Fragment) SealChannelSettingActivity.this.b.get(i);
        }

        public int getCount() {
            return SealChannelSettingActivity.this.a.length;
        }

        public CharSequence getPageTitle(int i) {
            return SealChannelSettingActivity.this.a[i];
        }
    }

    public static void a(Context context, @NonNull SealSharkChannel sealSharkChannel, boolean z) {
        Intent intent = new Intent(context, SealChannelSettingActivity.class);
        intent.putExtra("extra_seal_channel", sealSharkChannel);
        intent.putExtra("extra_seal_is_first_channel", z);
        context.startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_seal_channel_setting);
        ButterKnife.bind((Activity) this);
        q();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.fab /*2131755213*/:
                ((SealCustomFragment) this.b.get(0)).i();
                return;
            case R.id.click_to_edit_channel /*2131755332*/:
                if (this.c == null) {
                    return;
                }
                if (this.c.o()) {
                    this.q = true;
                    this.r = false;
                    ((SealPresetFragment) this.b.get(1)).f(this.c);
                    return;
                }
                this.q = false;
                this.r = true;
                ((SealCustomFragment) this.b.get(0)).f(this.c);
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
        getIntent().getBooleanExtra("extra_seal_is_first_channel", true);
        w.s();
        this.mViewPager.setAdapter(new a(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.d);
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
                ((TextView) tab.getCustomView()).setTextColor(SealChannelSettingActivity.this.getResources().getColor(R.color.select_color));
            }

            public void onTabUnselected(Tab tab) {
                ((TextView) tab.getCustomView()).setTextColor(SealChannelSettingActivity.this.getResources().getColor(R.color.black80));
            }

            public void onTabReselected(Tab tab) {
            }
        });
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(ContextCompat.getDrawable(this, R.drawable.layout_divider_vertical));
        this.b.clear();
        SealCustomFragment g = SealCustomFragment.g();
        SealPresetFragment g2 = SealPresetFragment.g();
        this.b.add(g);
        this.b.add(g2);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        this.clickToEdit.setOnClickListener(this);
        this.c = (SealSharkChannel) getIntent().getParcelableExtra("extra_seal_channel");
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
                    this.normalRxCssValue.setText(ad.a((int) R.string.receive_css_code_s, v.d(sealSharkChannel.j())));
                    this.normalTxCssValue.setText(ad.a((int) R.string.translate_css_code_s, v.d(sealSharkChannel.k())));
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
                this.specialRxCssValue.setText(ad.a((int) R.string.receive_css_code_s, v.d(sealSharkChannel.j())));
                this.specialTxCssValue.setText(ad.a((int) R.string.translate_css_code_s, v.d(sealSharkChannel.k())));
            }
            String format = String.format(Locale.getDefault(), "C%02d", new Object[]{Integer.valueOf(sealSharkChannel.b() + 1)});
            if (sealSharkChannel.g().trim().length() == 0) {
                this.mChannelName.setText(format);
            } else {
                this.mChannelName.setText(format + Token.SEPARATOR + sealSharkChannel.g().trim());
            }
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
        return this.q;
    }

    public void a(boolean z) {
        this.q = z;
    }

    public boolean f() {
        return this.r;
    }

    public void b(boolean z) {
        this.r = z;
    }
}
