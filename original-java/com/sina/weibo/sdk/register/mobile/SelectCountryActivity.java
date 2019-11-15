package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.mi.mimsgsdk.utils.Constants;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.utils.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SelectCountryActivity extends Activity implements com.sina.weibo.sdk.register.mobile.LetterIndexBar.a {
    String a = "";
    private LetterIndexBar b;
    /* access modifiers changed from: private */
    public List<Country>[] c;
    private List<Country> d;
    private CountryList e;
    /* access modifiers changed from: private */
    public List<b> f = new ArrayList();
    private ListView g;
    /* access modifiers changed from: private */
    public a h;
    private RelativeLayout i;
    private FrameLayout j;

    private class a extends BaseAdapter {
        private a() {
        }

        /* synthetic */ a(SelectCountryActivity selectCountryActivity, a aVar) {
            this();
        }

        public int getCount() {
            if (SelectCountryActivity.this.f != null) {
                return SelectCountryActivity.this.f.size();
            }
            return 0;
        }

        public Object getItem(int i) {
            if (SelectCountryActivity.this.f == null || SelectCountryActivity.this.f.isEmpty()) {
                return null;
            }
            if (i == SelectCountryActivity.this.f.size()) {
                return null;
            }
            b bVar = (b) SelectCountryActivity.this.f.get(i);
            if (bVar.b == -1) {
                return null;
            }
            return SelectCountryActivity.this.c[bVar.a].get(bVar.b);
        }

        public long getItemId(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            b bVar = (b) SelectCountryActivity.this.f.get(i);
            if (view == null) {
                if (bVar.b == -1) {
                    return a(bVar.a);
                }
                Country country = (Country) SelectCountryActivity.this.c[bVar.a].get(bVar.b);
                return new SelectCountryItemView(SelectCountryActivity.this, country.a(), country.c());
            } else if (bVar.b != -1) {
                Country country2 = (Country) SelectCountryActivity.this.c[bVar.a].get(bVar.b);
                if (view instanceof SelectCountryTitleView) {
                    return new SelectCountryItemView(SelectCountryActivity.this, country2.a(), country2.c());
                }
                ((SelectCountryItemView) view).a(country2.a(), country2.c());
                return view;
            } else if (!(view instanceof SelectCountryTitleView)) {
                return a(bVar.a);
            } else {
                if (bVar.a != 0) {
                    return a(bVar.a);
                }
                ((SelectCountryTitleView) view).a(f.a(SelectCountryActivity.this, "Common", "常用", "常用"));
                return view;
            }
        }

        private SelectCountryTitleView a(int i) {
            SelectCountryTitleView selectCountryTitleView = new SelectCountryTitleView(SelectCountryActivity.this.getApplicationContext());
            if (i == 0) {
                selectCountryTitleView.setTitle(f.a(SelectCountryActivity.this, "Common", "常用", "常用"));
            } else {
                selectCountryTitleView.setTitle(String.valueOf((char) ((i + 65) - 1)));
            }
            return selectCountryTitleView;
        }
    }

    private class b {
        int a;
        int b;

        b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b) || this.b != -1) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a == bVar.a && this.b == bVar.b) {
                return true;
            }
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    private void a() {
        this.i = new RelativeLayout(this);
        this.i.setLayoutParams(new LayoutParams(-1, -1));
        TitleBar titleBar = new TitleBar(this);
        titleBar.setId(1);
        titleBar.setLeftBtnBg(f.a((Context) this, "weibosdk_navigationbar_back.png", "weibosdk_navigationbar_back_highlighted.png"));
        titleBar.setTitleBarText(f.a(this, "Region", "选择国家", "選擇國家"));
        titleBar.setTitleBarClickListener(new com.sina.weibo.sdk.component.view.TitleBar.a() {
            public void a() {
                SelectCountryActivity.this.setResult(0);
                SelectCountryActivity.this.finish();
            }
        });
        this.i.addView(titleBar);
        this.j = new FrameLayout(this);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.addRule(3, titleBar.getId());
        this.j.setLayoutParams(layoutParams);
        this.i.addView(this.j);
        this.g = new ListView(this);
        this.g.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
        this.g.setFadingEdgeLength(0);
        this.g.setSelector(new ColorDrawable(0));
        this.g.setDividerHeight(f.a((Context) this, 1));
        this.g.setCacheColorHint(0);
        this.g.setDrawSelectorOnTop(false);
        this.g.setScrollingCacheEnabled(false);
        this.g.setScrollbarFadingEnabled(false);
        this.g.setVerticalScrollBarEnabled(false);
        this.g.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                Country country = (Country) SelectCountryActivity.this.h.getItem(i);
                if (country != null) {
                    Intent intent = new Intent();
                    intent.putExtra("code", country.c());
                    intent.putExtra(HttpPostBodyUtil.NAME, country.a());
                    SelectCountryActivity.this.setResult(-1, intent);
                    SelectCountryActivity.this.finish();
                }
            }
        });
        this.j.addView(this.g);
        this.h = new a(this, null);
        this.g.setAdapter(this.h);
        this.b = new LetterIndexBar(this);
        this.b.setIndexChangeListener(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams2.gravity = 5;
        this.b.setLayoutParams(layoutParams2);
        this.j.addView(this.b);
        a.a((Context) this);
        Locale a2 = f.a();
        if (Locale.SIMPLIFIED_CHINESE.equals(a2)) {
            this.a = f.c(this, "countryCode.txt");
        } else if (Locale.TRADITIONAL_CHINESE.equals(a2)) {
            this.a = f.c(this, "countryCodeTw.txt");
        } else {
            this.a = f.c(this, "countryCodeEn.txt");
        }
        this.e = new CountryList(this.a);
        this.d = this.e.a;
        this.c = a(this.d);
        this.f = a(this.c);
        this.h.notifyDataSetChanged();
        setContentView(this.i);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
    }

    public void a(int i2) {
        if (this.c != null && i2 < this.c.length && this.c[i2] != null) {
            this.g.setSelection(this.f.indexOf(new b(i2, -1)));
        }
    }

    private List<Country>[] a(List<Country> list) {
        ArrayList[] arrayListArr = new ArrayList[27];
        Country country = new Country();
        country.a("0086");
        country.b(f.a(this, "China", Constants.DEFAULT_COUNTRY_NAME, "中國"));
        arrayListArr[0] = new ArrayList();
        arrayListArr[0].add(country);
        for (int i2 = 0; i2 < list.size(); i2++) {
            Country country2 = (Country) list.get(i2);
            if (country2.c().equals("00852") || country2.c().equals("00853") || country2.c().equals("00886")) {
                arrayListArr[0].add(country2);
            } else {
                int charAt = (country2.b().charAt(0) - 'a') + 1;
                if (arrayListArr[charAt] == null) {
                    arrayListArr[charAt] = new ArrayList();
                }
                arrayListArr[charAt].add(country2);
            }
        }
        return arrayListArr;
    }

    private List<b> a(List<Country>[] listArr) {
        ArrayList arrayList = new ArrayList();
        if (listArr != null) {
            for (int i2 = 0; i2 < listArr.length; i2++) {
                List<Country> list = listArr[i2];
                if (list != null && list.size() > 0) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        if (i3 == 0) {
                            arrayList.add(new b(i2, -1));
                        }
                        arrayList.add(new b(i2, i3));
                    }
                }
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
