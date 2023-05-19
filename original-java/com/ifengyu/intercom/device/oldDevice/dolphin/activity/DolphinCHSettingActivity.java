package com.ifengyu.intercom.device.oldDevice.dolphin.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment;
import com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment;
import com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment;
import com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DolphinCHSettingActivity extends BaseActivity1 implements View.OnClickListener {
    @BindView(R.id.bottom_channel_type_text)
    LinearLayout bottomChannelTypeText;

    /* renamed from: l */
    private int f12779l;

    /* renamed from: m */
    private DolphinChannelModel f12780m;
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

    /* renamed from: n */
    private String f12781n;
    @BindView(R.id.normal_channel_number)
    TextView normalChannelNumber;
    @BindView(R.id.special_channel_layout)
    LinearLayout specialChannelLayout;
    @BindView(R.id.special_rx_channel_number)
    TextView specialRxChannelNumber;
    @BindView(R.id.special_tx_channel_number)
    TextView specialTxChannelNumber;

    /* renamed from: j */
    private final String[] f12777j = UIUtils.m8601q(R.array.dolphin_channel_tab_title);

    /* renamed from: k */
    private List<DolphinChannelBaseFragment> f12778k = new ArrayList();

    /* renamed from: o */
    private final ViewPager.C1068k f12782o = new C3526a();

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinCHSettingActivity$a */
    /* loaded from: classes2.dex */
    class C3526a extends ViewPager.C1068k {
        C3526a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.InterfaceC1065h
        public void onPageSelected(int i) {
            DolphinCHSettingActivity.this.m13304N(i);
            String str = ((BaseActivity1) DolphinCHSettingActivity.this).f15055a;
            C4161y.m11054a(str, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(8);
            } else {
                DolphinCHSettingActivity.this.mFabLayout.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinCHSettingActivity$b */
    /* loaded from: classes2.dex */
    public class C3527b implements TabLayout.OnTabSelectedListener {
        C3527b() {
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

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinCHSettingActivity$c */
    /* loaded from: classes2.dex */
    public class C3528c extends FragmentPagerAdapter {
        public C3528c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return DolphinCHSettingActivity.this.f12777j.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return (Fragment) DolphinCHSettingActivity.this.f12778k.get(i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return DolphinCHSettingActivity.this.f12777j[i];
        }
    }

    /* renamed from: K */
    private void m13307K() {
        TextView textView = this.normalChannelNumber;
        Typeface typeface = AppConstants.f13909c;
        textView.setTypeface(typeface);
        this.specialRxChannelNumber.setTypeface(typeface);
        this.specialTxChannelNumber.setTypeface(typeface);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_is_first_channel", true);
        int m11203k = MiTalkClientUtil.m11203k();
        this.mViewPager.setAdapter(new C3528c(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.f12782o);
        this.mViewPager.setOffscreenPageLimit(2);
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayout.setTabGravity(0);
        for (int i = 0; i < this.mTabLayout.getTabCount(); i++) {
            TextView textView2 = new TextView(this);
            textView2.setTypeface(AppConstants.f13907a);
            textView2.setText(this.f12777j[i]);
            textView2.setGravity(17);
            this.mTabLayout.getTabAt(i).setCustomView(textView2);
        }
        this.mTabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new C3527b());
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(ContextCompat.m23927d(this, R.drawable.layout_divider_vertical));
        this.f12778k.clear();
        DolphinPresetFragment m13231l2 = DolphinPresetFragment.m13231l2(this.f12781n, booleanExtra, m11203k);
        DolphinCustomFragment m13243p2 = DolphinCustomFragment.m13243p2(this.f12781n, booleanExtra, m11203k);
        DolphinRelayFragment m13223k2 = DolphinRelayFragment.m13223k2(this.f12781n, booleanExtra, m11203k);
        this.f12778k.add(m13231l2);
        this.f12778k.add(m13243p2);
        this.f12778k.add(m13223k2);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        DolphinChannelModel dolphinChannelModel = (DolphinChannelModel) getIntent().getParcelableExtra("extra_user_channel");
        this.f12780m = dolphinChannelModel;
        if (dolphinChannelModel != null) {
            m13306L(dolphinChannelModel);
            if (this.f12780m.getType() == 8) {
                this.mViewPager.setCurrentItem(2);
                ((TextView) this.mTabLayout.getTabAt(2).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
            } else if (this.f12780m.getType() == 2) {
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

    /* renamed from: O */
    public static void m13303O(Context context, String str, @NonNull DolphinChannelModel dolphinChannelModel, boolean z) {
        Intent intent = new Intent(context, DolphinCHSettingActivity.class);
        intent.putExtra("device_mac_address", str);
        intent.putExtra("extra_user_channel", dolphinChannelModel);
        intent.putExtra("extra_is_first_channel", z);
        context.startActivity(intent);
    }

    /* renamed from: I */
    public DolphinChannelModel m13309I() {
        return this.f12780m;
    }

    /* renamed from: J */
    public int m13308J() {
        return this.f12779l;
    }

    /* renamed from: L */
    public void m13306L(DolphinChannelModel dolphinChannelModel) {
        if (dolphinChannelModel != null) {
            m13305M(dolphinChannelModel);
            if (dolphinChannelModel.getType() == 8) {
                this.specialChannelLayout.setVisibility(0);
                this.bottomChannelTypeText.setVisibility(0);
                this.normalChannelNumber.setVisibility(8);
                this.specialRxChannelNumber.setText(MethodsUtils.m11290j(dolphinChannelModel.getFreq()));
                this.specialTxChannelNumber.setText(MethodsUtils.m11290j(dolphinChannelModel.getFreq2()));
                this.mChannelName.setText(dolphinChannelModel.getName().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(8);
            this.bottomChannelTypeText.setVisibility(8);
            this.normalChannelNumber.setVisibility(0);
            if (dolphinChannelModel.getType() == 7) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_channel_scan));
            } else if (dolphinChannelModel.getType() == 6) {
                this.normalChannelNumber.setText(getString(R.string.device_mode_team));
            } else {
                this.normalChannelNumber.setText(MethodsUtils.m11290j(dolphinChannelModel.getFreq()));
            }
            this.mChannelName.setText(dolphinChannelModel.getName().trim());
        }
    }

    /* renamed from: M */
    public void m13305M(DolphinChannelModel dolphinChannelModel) {
        this.f12780m = dolphinChannelModel;
    }

    /* renamed from: N */
    public void m13304N(int i) {
        this.f12779l = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.fab) {
            if (id != R.id.title_bar_left) {
                return;
            }
            finish();
            return;
        }
        int m13308J = m13308J();
        if (m13308J == 1) {
            ((DolphinCustomFragment) this.f12778k.get(1)).m13245n2();
        } else if (m13308J != 2) {
        } else {
            ((DolphinRelayFragment) this.f12778k.get(2)).m13225i2();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dolphin_channel_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f12781n = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m13307K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        UIUtils.m8597u();
    }
}
