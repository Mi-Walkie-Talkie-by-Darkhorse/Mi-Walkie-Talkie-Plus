package com.ifengyu.intercom.ui;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.OnTabSelectedListener;
import android.support.design.widget.TabLayout.Tab;
import android.support.design.widget.TabLayout.TabLayoutOnPageChangeListener;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.im.imservice.entity.RecentInfo;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.c;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.z;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.fragment.DiscoveryFragment;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.fragment.MyFragment;
import com.ifengyu.intercom.ui.imui.ui.drop.DropCover;
import com.ifengyu.intercom.ui.imui.ui.main.tab.SessionListFragment;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.view.NoScrollViewPager;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.UpdateManager.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;

public class MainActivity extends BaseActivity {
    public int[] a;
    public int[] b;
    public String[] c;
    /* access modifiers changed from: private */
    public ArrayList<Fragment> d;
    @BindView(2131755254)
    TabLayout mTabLayout;
    private boolean q = true;
    private a r;
    @BindView(2131755256)
    NoScrollViewPager viewPager;

    public class TabPagerAdapter extends FragmentPagerAdapter {
        public TabPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        public Fragment getItem(int i) {
            return (Fragment) MainActivity.this.d.get(i);
        }

        public int getCount() {
            return MainActivity.this.d.size();
        }

        public CharSequence getPageTitle(int i) {
            return MainActivity.this.c[i];
        }
    }

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void b(String str) {
            s.b("MainActivity", "已连接...");
            ((MapFragment) MainActivity.this.d.get(0)).e();
            if (MiTalkiApp.a().j()) {
                ((SessionListFragment) MainActivity.this.d.get(1)).b();
            }
        }

        public void c(String str) {
            s.c("MainActivity", "连接断开...");
            ((MapFragment) MainActivity.this.d.get(0)).f();
            if (MiTalkiApp.a().j()) {
                ((SessionListFragment) MainActivity.this.d.get(1)).c();
            }
        }

        public void a(String str) {
        }

        public void d(String str) {
        }

        public void e(String str) {
        }

        public void f(String str) {
        }
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        s.b("MainActivity", "onNewIntent");
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        s.b("MainActivity", "onCreate");
        setContentView((int) R.layout.activity_main);
        ButterKnife.bind((Activity) this);
        if (MiTalkiApp.a().j()) {
            this.a = new int[]{R.drawable.map_icon_map_unchecked, R.drawable.map_icon_talk_unchecked, R.drawable.map_icon_find_unchecked, R.drawable.map_icon_mine_unchecked};
            this.b = new int[]{R.drawable.map_icon_map_checked, R.drawable.map_icon_talk_checked, R.drawable.map_icon_find_checked, R.drawable.map_icon_mine_checked};
            this.c = ad.b((int) R.array.main_tab_title_have_net_talk);
        } else {
            this.a = new int[]{R.drawable.map_icon_map_unchecked, R.drawable.map_icon_find_unchecked, R.drawable.map_icon_mine_unchecked};
            this.b = new int[]{R.drawable.map_icon_map_checked, R.drawable.map_icon_find_checked, R.drawable.map_icon_mine_checked};
            this.c = ad.b((int) R.array.main_tab_title);
        }
        e();
        f();
        this.r = new a();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        s.b("MainActivity", "onStart");
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
        if (c.b()) {
            z.a(this);
        }
        d();
        k.a().a((com.ifengyu.intercom.node.i.a) this.r);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        s.b("MainActivity", "onResume");
        MiStatInterface.recordPageStart((Activity) this, "主界面");
        c();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        s.b("MainActivity", "onPause");
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        s.b("MainActivity", "onStop");
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        k.a().b((com.ifengyu.intercom.node.i.a) this.r);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        s.b("MainActivity", "onDestroy");
    }

    private void c() {
        if (this.q) {
            this.q = false;
            UpdateManager a2 = UpdateManager.a();
            UpdateManager a3 = UpdateManager.a();
            a3.getClass();
            a2.a(new b(a3, this, CHECK_CONDITION.APK));
        }
    }

    private void d() {
        try {
            final BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
                new d(this).a((int) R.string.common_cancel, (OnClickListener) null).b((int) R.string.common_select, (OnClickListener) new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        defaultAdapter.enable();
                    }
                }).c((int) R.string.connect_open_ble).b().c();
            }
        } catch (Exception e) {
            s.e("MainActivity", "error " + e.getMessage());
        }
    }

    private void e() {
        this.d = new ArrayList<>();
        this.d.add(MapFragment.a());
        if (MiTalkiApp.a().j()) {
            this.d.add(SessionListFragment.a());
        }
        this.d.add(DiscoveryFragment.a());
        this.d.add(MyFragment.d());
    }

    private void f() {
        this.viewPager.setAdapter(new TabPagerAdapter(getSupportFragmentManager()));
        this.viewPager.setOffscreenPageLimit(3);
        this.viewPager.addOnPageChangeListener(new TabLayoutOnPageChangeListener(this.mTabLayout));
        this.mTabLayout.addOnTabSelectedListener(new OnTabSelectedListener() {
            public void onTabSelected(Tab tab) {
                MainActivity.this.viewPager.setCurrentItem(tab.getPosition(), false);
                MainActivity.this.f(tab.getPosition());
                switch (tab.getPosition()) {
                    case 0:
                        MiStatInterface.recordCountEvent("map_tab_page", "mapTabClick");
                        return;
                    case 1:
                        MiStatInterface.recordCountEvent("discovery_tab_page", "discoveryTabClick");
                        return;
                    case 2:
                        MiStatInterface.recordCountEvent("my_tab_page", "myTabClick");
                        return;
                    default:
                        return;
                }
            }

            public void onTabUnselected(Tab tab) {
                View customView = MainActivity.this.mTabLayout.getTabAt(tab.getPosition()).getCustomView();
                customView.setScaleX(1.0f);
                customView.setScaleY(1.0f);
            }

            public void onTabReselected(Tab tab) {
            }
        });
        for (int i = 0; i < this.c.length; i++) {
            this.mTabLayout.addTab(this.mTabLayout.newTab().setCustomView(b(i)));
        }
        q();
    }

    private void q() {
        com.ifengyu.intercom.ui.imui.ui.drop.a.a().a((DropCover) findViewById(R.id.unread_cover), a.a);
    }

    static final /* synthetic */ void a(Object obj, boolean z) {
        if (obj != null && z) {
            if (obj instanceof RecentInfo) {
                RecentInfo recentInfo = (RecentInfo) obj;
                s.c("MainActivity", "clearUnreadCount, sessionId=" + recentInfo.getPeerId());
                IMUnreadMsgManager.instance().readUnreadSession(recentInfo.getSessionKey());
            } else if (!(obj instanceof String)) {
            } else {
                if (((String) obj).contentEquals("0")) {
                    s.c("MainActivity", "clearAllUnreadCount");
                } else if (((String) obj).contentEquals("1")) {
                    s.c("MainActivity", "clearAllSystemUnreadCount");
                }
            }
        }
    }

    public void a(int i) {
        this.mTabLayout.getTabAt(1).getCustomView();
    }

    /* access modifiers changed from: private */
    public void f(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.mTabLayout.getTabCount()) {
                View customView = this.mTabLayout.getTabAt(i3).getCustomView();
                ImageView imageView = (ImageView) customView.findViewById(R.id.tab_content_image);
                TextView textView = (TextView) customView.findViewById(R.id.tab_content_text);
                if (i3 == i) {
                    imageView.setImageResource(this.b[i3]);
                    textView.setTextColor(getResources().getColor(R.color.select_color));
                    customView.setScaleX(1.1f);
                    customView.setScaleY(1.1f);
                } else {
                    imageView.setImageResource(this.a[i3]);
                    textView.setTextColor(getResources().getColor(R.color.black60));
                }
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    public View b(int i) {
        View inflate = LayoutInflater.from(this).inflate(R.layout.home_tab_content, null);
        ((ImageView) inflate.findViewById(R.id.tab_content_image)).setImageResource(this.a[i]);
        ((TextView) inflate.findViewById(R.id.tab_content_text)).setText(this.c[i]);
        return inflate;
    }

    public int a() {
        return this.mTabLayout.getSelectedTabPosition();
    }
}
