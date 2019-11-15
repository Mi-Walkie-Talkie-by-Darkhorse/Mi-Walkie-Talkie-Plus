package com.ifengyu.intercom.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.bean.DiscoverResult;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ExamQuestionBankActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.adapter.c;
import com.ifengyu.intercom.ui.adapter.c.a;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import io.reactivex.annotations.NonNull;
import io.reactivex.b.f;
import io.reactivex.k;
import io.reactivex.l;
import io.reactivex.m;
import java.io.Serializable;
import java.util.ArrayList;
import okhttp3.Call;

public class DiscoveryFragment extends BaseFragment {
    a b = new a() {
        public void a(int i) {
            Intent intent = new Intent(DiscoveryFragment.this.c, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.SINGLE_ARTICLE");
            intent.putExtra("cms_single_article_id", ((DiscoveryArticleBean) DiscoveryFragment.this.e.get(i)).getId());
            DiscoveryFragment.this.startActivity(intent);
            MiStatInterface.recordCountEvent("discovery_tab_page", "topLoopBannerClick");
        }

        public void a() {
            Intent intent = new Intent(DiscoveryFragment.this.c, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.NEW_MAN_GUIDE");
            DiscoveryFragment.this.startActivity(intent);
            MiStatInterface.recordCountEvent("discovery_tab_page", "userGuideBtnClick");
        }

        public void b() {
            Intent intent = new Intent(DiscoveryFragment.this.c, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.EXAM_IFNO_QUERY");
            DiscoveryFragment.this.startActivity(intent);
            MiStatInterface.recordCountEvent("discovery_tab_page", "wirelessExamQueryBtnClick");
        }

        public void c() {
            DiscoveryFragment.this.startActivity(new Intent(DiscoveryFragment.this.c, ExamQuestionBankActivity.class));
            MiStatInterface.recordCountEvent("discovery_tab_page", "wirelessQuestionHouseBtnClick");
        }

        public void b(int i) {
            Intent intent = new Intent(DiscoveryFragment.this.c, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.SINGLE_ARTICLE");
            intent.putExtra("cms_single_article_id", ((DiscoveryArticleBean) DiscoveryFragment.this.f.get(i)).getId());
            DiscoveryFragment.this.startActivity(intent);
        }

        public void d() {
            DiscoveryFragment.this.f();
        }
    };
    /* access modifiers changed from: private */
    public MainActivity c;
    /* access modifiers changed from: private */
    public c d;
    /* access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> e;
    /* access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> f;
    private int g = 5;
    /* access modifiers changed from: private */
    public int h = 0;
    private final String i = "DiscoveryLoopData";
    private final String j = "loop_data_";
    private final String k = "DiscoveryListInfoData";
    private final String l = "list_info_data_";
    private View m;
    @BindView(2131755579)
    RecyclerView recyclerView;
    @BindView(2131755578)
    SwipeRefreshLayout swipeRefreshLayout;
    @BindView(2131755203)
    ImageView titleBarLeft;
    @BindView(2131755355)
    ImageView titleBarRight;
    @BindView(2131755588)
    TextView titleBarTitle;

    public static DiscoveryFragment a() {
        s.c("DiscoveryFragment", "newInstance");
        return new DiscoveryFragment();
    }

    public void onAttach(Context context) {
        s.c("DiscoveryFragment", "onAttach");
        super.onAttach(context);
        this.c = (MainActivity) getActivity();
    }

    public void onCreate(@Nullable Bundle bundle) {
        s.c("DiscoveryFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        s.c("DiscoveryFragment", "onCreateView");
        this.m = layoutInflater.inflate(R.layout.fragment_discovery, viewGroup, false);
        ButterKnife.bind((Object) this, this.m);
        d();
        i();
        return this.m;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        s.c("DiscoveryFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
    }

    public void onStart() {
        s.c("DiscoveryFragment", "onStart");
        super.onStart();
    }

    public void onStop() {
        super.onStop();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    private void d() {
        this.a = (ViewGroup) this.m.findViewById(R.id.title_bar);
        c();
        this.titleBarTitle.setText(getResources().getString(R.string.tab_discovery));
        this.titleBarLeft.setVisibility(8);
        this.titleBarRight.setVisibility(8);
        this.swipeRefreshLayout.setColorSchemeResources(R.color.track_record_color);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.c);
        linearLayoutManager.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.e = new ArrayList<>();
        this.f = new ArrayList<>();
        this.d = new c(this.e, this.f, this.c);
        this.d.setOnAllItemClickListener(this.b);
        this.recyclerView.setAdapter(this.d);
        this.swipeRefreshLayout.setOnRefreshListener(new OnRefreshListener() {
            public void onRefresh() {
                DiscoveryFragment.this.i();
                DiscoveryFragment.this.swipeRefreshLayout.setRefreshing(false);
            }
        });
        e();
    }

    private void e() {
        k.create(new m<ArrayList<DiscoveryArticleBean>>() {
            public void a(@NonNull l<ArrayList<DiscoveryArticleBean>> lVar) throws Exception {
                lVar.a(DiscoveryFragment.this.h());
            }
        }).subscribeOn(io.reactivex.e.a.b()).observeOn(io.reactivex.a.b.a.a()).subscribe((f<? super T>) new f<ArrayList<DiscoveryArticleBean>>() {
            /* renamed from: a */
            public void accept(@NonNull ArrayList<DiscoveryArticleBean> arrayList) throws Exception {
                DiscoveryFragment.this.e.clear();
                DiscoveryFragment.this.e.addAll(arrayList);
                DiscoveryFragment.this.d.notifyDataSetChanged();
            }
        });
        k.create(new m<ArrayList<DiscoveryArticleBean>>() {
            public void a(@NonNull l<ArrayList<DiscoveryArticleBean>> lVar) throws Exception {
                lVar.a(DiscoveryFragment.this.g());
            }
        }).subscribeOn(io.reactivex.e.a.b()).observeOn(io.reactivex.a.b.a.a()).subscribe((f<? super T>) new f<ArrayList<DiscoveryArticleBean>>() {
            /* renamed from: a */
            public void accept(@NonNull ArrayList<DiscoveryArticleBean> arrayList) throws Exception {
                DiscoveryFragment.this.f.clear();
                DiscoveryFragment.this.f.addAll(arrayList);
                DiscoveryFragment.this.d.notifyDataSetChanged();
            }
        });
    }

    /* access modifiers changed from: private */
    public void f() {
        com.ifengyu.intercom.a.a.a(this.g, this.h, (b) new com.ifengyu.intercom.a.b.c() {
            public void a(Call call, Exception exc, int i) {
                v.a((CharSequence) DiscoveryFragment.this.getString(R.string.net_error_please_check), false);
                DiscoveryFragment.this.d.notifyItemChanged(DiscoveryFragment.this.d.getItemCount() - 1);
            }

            public void a(DiscoverResult discoverResult, int i) {
                int size = discoverResult.items.size();
                if (size > 0) {
                    DiscoveryFragment.this.h = DiscoveryFragment.this.h + size;
                    for (int i2 = 0; i2 < size; i2++) {
                        DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) discoverResult.items.get(i2);
                        discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                        boolean z = false;
                        for (int i3 = 0; i3 < DiscoveryFragment.this.f.size(); i3++) {
                            if (((DiscoveryArticleBean) DiscoveryFragment.this.f.get(i3)).getId() == discoveryArticleBean.getId()) {
                                z = true;
                            }
                        }
                        if (!z) {
                            DiscoveryFragment.this.f.add(discoveryArticleBean);
                        }
                        DiscoveryFragment.this.d.b(DiscoveryFragment.this.f);
                        DiscoveryFragment.this.d.notifyDataSetChanged();
                    }
                    return;
                }
                v.a((CharSequence) DiscoveryFragment.this.getResources().getString(R.string.tab_discovery_not_have_more_content), false);
                DiscoveryFragment.this.d.a(true);
                DiscoveryFragment.this.d.notifyDataSetChanged();
            }
        });
    }

    /* access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> g() {
        com.ifengyu.intercom.b.a a = com.ifengyu.intercom.b.a.a((Context) this.c, "DiscoveryListInfoData");
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 10) {
                break;
            }
            DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) a.b("list_info_data_" + i3);
            if (discoveryArticleBean == null) {
                break;
            }
            arrayList.add(discoveryArticleBean);
            i2 = i3 + 1;
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> h() {
        com.ifengyu.intercom.b.a a = com.ifengyu.intercom.b.a.a(ad.a(), "DiscoveryLoopData");
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= 10) {
                break;
            }
            DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) a.b("loop_data_" + i3);
            if (discoveryArticleBean == null) {
                break;
            }
            arrayList.add(discoveryArticleBean);
            i2 = i3 + 1;
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public void i() {
        com.ifengyu.intercom.a.a.b(new com.ifengyu.intercom.a.b.c() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(final DiscoverResult discoverResult, int i) {
                final int size = discoverResult.items.size();
                DiscoveryFragment.this.e.clear();
                for (int i2 = 0; i2 < size; i2++) {
                    DiscoveryFragment.this.e.add((DiscoveryArticleBean) discoverResult.items.get(i2));
                }
                DiscoveryFragment.this.d.a(DiscoveryFragment.this.e);
                DiscoveryFragment.this.d.notifyDataSetChanged();
                e.a().execute(new Runnable() {
                    public void run() {
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < size) {
                                com.ifengyu.intercom.b.a.a(ad.a(), "DiscoveryLoopData").a("loop_data_" + i2, (Serializable) (DiscoveryArticleBean) discoverResult.items.get(i2));
                                i = i2 + 1;
                            } else {
                                return;
                            }
                        }
                    }
                });
            }
        });
        this.h = 0;
        com.ifengyu.intercom.a.a.a(this.g, this.h, (b) new com.ifengyu.intercom.a.b.c() {
            public void a(Call call, Exception exc, int i) {
            }

            public void a(final DiscoverResult discoverResult, int i) {
                final int size = discoverResult.items.size();
                DiscoveryFragment.this.h = DiscoveryFragment.this.h + size;
                DiscoveryFragment.this.f.clear();
                for (int i2 = 0; i2 < size; i2++) {
                    DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) discoverResult.items.get(i2);
                    discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                    DiscoveryFragment.this.f.add(discoveryArticleBean);
                }
                DiscoveryFragment.this.d.b(DiscoveryFragment.this.f);
                DiscoveryFragment.this.d.notifyDataSetChanged();
                e.a().execute(new Runnable() {
                    public void run() {
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < size) {
                                DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) discoverResult.items.get(i2);
                                discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                                com.ifengyu.intercom.b.a.a(ad.a(), "DiscoveryListInfoData").a("list_info_data_" + i2, (Serializable) discoveryArticleBean);
                                i = i2 + 1;
                            } else {
                                return;
                            }
                        }
                    }
                });
            }
        });
    }
}
