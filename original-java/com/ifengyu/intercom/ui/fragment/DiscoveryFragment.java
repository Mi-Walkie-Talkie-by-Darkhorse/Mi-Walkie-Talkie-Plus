package com.ifengyu.intercom.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoverResult;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.ExamQuestionBankActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.adapter.c;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.annotations.NonNull;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class DiscoveryFragment extends com.ifengyu.intercom.ui.baseui.a {
    private MainActivity g;
    private com.ifengyu.intercom.ui.adapter.c h;
    private ArrayList<DiscoveryArticleBean> i;
    private ArrayList<DiscoveryArticleBean> j;
    private View q;
    @BindView(R.id.discovery_recycler)
    RecyclerView recyclerView;
    @BindView(R.id.discovery_swipe_refresh_layout)
    SwipeRefreshLayout swipeRefreshLayout;
    @BindView(R.id.title_bar_left)
    ImageView titleBarLeft;
    @BindView(R.id.title_bar_right)
    ImageView titleBarRight;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    private int k = 10;
    private int l = 0;
    private final String m = "DiscoveryLoopData";
    private final String n = "loop_data_";
    private final String o = "DiscoveryListInfoData";
    private final String p = "list_info_data_";
    c.a r = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements SwipeRefreshLayout.j {
        a() {
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
        public void a() {
            DiscoveryFragment.this.k();
            DiscoveryFragment.this.swipeRefreshLayout.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Consumer<ArrayList<DiscoveryArticleBean>> {
        b() {
        }

        /* renamed from: a */
        public void accept(@NonNull ArrayList<DiscoveryArticleBean> arrayList) throws Exception {
            DiscoveryFragment.this.i.clear();
            DiscoveryFragment.this.i.addAll(arrayList);
            DiscoveryFragment.this.h.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements ObservableOnSubscribe<ArrayList<DiscoveryArticleBean>> {
        c() {
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(@NonNull ObservableEmitter<ArrayList<DiscoveryArticleBean>> observableEmitter) throws Exception {
            observableEmitter.onNext(DiscoveryFragment.this.m());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Consumer<ArrayList<DiscoveryArticleBean>> {
        d() {
        }

        /* renamed from: a */
        public void accept(@NonNull ArrayList<DiscoveryArticleBean> arrayList) throws Exception {
            DiscoveryFragment.this.j.clear();
            DiscoveryFragment.this.j.addAll(arrayList);
            DiscoveryFragment.this.h.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements ObservableOnSubscribe<ArrayList<DiscoveryArticleBean>> {
        e() {
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(@NonNull ObservableEmitter<ArrayList<DiscoveryArticleBean>> observableEmitter) throws Exception {
            observableEmitter.onNext(DiscoveryFragment.this.j());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends com.ifengyu.intercom.g.d.c {
        g() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            c0.a((CharSequence) k0.c(R.string.net_error_please_check), false);
            DiscoveryFragment.this.h.notifyItemChanged(DiscoveryFragment.this.h.getItemCount() - 1);
        }

        public void a(DiscoverResult discoverResult, int i) {
            int size = discoverResult.items.size();
            if (size > 0) {
                DiscoveryFragment.this.l += size;
                for (int i2 = 0; i2 < size; i2++) {
                    DiscoveryArticleBean discoveryArticleBean = discoverResult.items.get(i2);
                    discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                    boolean z = false;
                    for (int i3 = 0; i3 < DiscoveryFragment.this.j.size(); i3++) {
                        if (((DiscoveryArticleBean) DiscoveryFragment.this.j.get(i3)).getId() == discoveryArticleBean.getId()) {
                            z = true;
                        }
                    }
                    if (!z) {
                        DiscoveryFragment.this.j.add(discoveryArticleBean);
                    }
                    DiscoveryFragment.this.h.a(DiscoveryFragment.this.j);
                    DiscoveryFragment.this.h.notifyDataSetChanged();
                }
                return;
            }
            c0.a((CharSequence) k0.c(R.string.tab_discovery_not_have_more_content), false);
            DiscoveryFragment.this.h.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h extends com.ifengyu.intercom.g.d.c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f6403a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DiscoverResult f6404b;

            a(h hVar, int i, DiscoverResult discoverResult) {
                this.f6403a = i;
                this.f6404b = discoverResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < this.f6403a; i++) {
                    com.ifengyu.intercom.i.g a2 = com.ifengyu.intercom.i.g.a(k0.a(), "DiscoveryLoopData");
                    a2.a("loop_data_" + i, this.f6404b.items.get(i));
                }
            }
        }

        h() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(DiscoverResult discoverResult, int i) {
            int size = discoverResult.items.size();
            DiscoveryFragment.this.i.clear();
            for (int i2 = 0; i2 < size; i2++) {
                DiscoveryFragment.this.i.add(discoverResult.items.get(i2));
            }
            DiscoveryFragment.this.h.b(DiscoveryFragment.this.i);
            DiscoveryFragment.this.h.notifyDataSetChanged();
            com.ifengyu.intercom.network.d.e.b().execute(new a(this, size, discoverResult));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i extends com.ifengyu.intercom.g.d.c {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f6406a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DiscoverResult f6407b;

            a(i iVar, int i, DiscoverResult discoverResult) {
                this.f6406a = i;
                this.f6407b = discoverResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i < this.f6406a; i++) {
                    DiscoveryArticleBean discoveryArticleBean = this.f6407b.items.get(i);
                    discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                    com.ifengyu.intercom.i.g a2 = com.ifengyu.intercom.i.g.a(k0.a(), "DiscoveryListInfoData");
                    a2.a("list_info_data_" + i, discoveryArticleBean);
                }
            }
        }

        i() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
        }

        public void a(DiscoverResult discoverResult, int i) {
            int size = discoverResult.items.size();
            DiscoveryFragment.this.l += size;
            DiscoveryFragment.this.j.clear();
            for (int i2 = 0; i2 < size; i2++) {
                DiscoveryArticleBean discoveryArticleBean = discoverResult.items.get(i2);
                discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                DiscoveryFragment.this.j.add(discoveryArticleBean);
            }
            DiscoveryFragment.this.h.a(DiscoveryFragment.this.j);
            DiscoveryFragment.this.h.notifyDataSetChanged();
            com.ifengyu.intercom.network.d.e.b().execute(new a(this, size, discoverResult));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> j() {
        com.ifengyu.intercom.i.g a2 = com.ifengyu.intercom.i.g.a(this.g, "DiscoveryListInfoData");
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < 10; i2++) {
            DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) a2.b("list_info_data_" + i2);
            if (discoveryArticleBean == null) {
                break;
            }
            arrayList.add(discoveryArticleBean);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        com.ifengyu.intercom.g.a.a(new h());
        this.l = 0;
        com.ifengyu.intercom.g.a.a(this.k, 0, (com.ifengyu.intercom.g.d.b) new i());
    }

    private void l() {
        Observable.create(new c()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new b());
        Observable.create(new e()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<DiscoveryArticleBean> m() {
        com.ifengyu.intercom.i.g a2 = com.ifengyu.intercom.i.g.a(k0.a(), "DiscoveryLoopData");
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < 10; i2++) {
            DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) a2.b("loop_data_" + i2);
            if (discoveryArticleBean == null) {
                break;
            }
            arrayList.add(discoveryArticleBean);
        }
        return arrayList;
    }

    private void n() {
        this.e = (ViewGroup) this.q.findViewById(R.id.title_bar);
        i();
        this.titleBarTitle.setText(k0.c(R.string.tab_discovery));
        this.titleBarLeft.setVisibility(8);
        this.titleBarRight.setVisibility(8);
        this.swipeRefreshLayout.setColorSchemeResources(R.color.track_record_color);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.g);
        linearLayoutManager.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.i = new ArrayList<>();
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        this.j = arrayList;
        com.ifengyu.intercom.ui.adapter.c cVar = new com.ifengyu.intercom.ui.adapter.c(this.i, arrayList, this.g);
        this.h = cVar;
        cVar.setOnAllItemClickListener(this.r);
        this.recyclerView.setAdapter(this.h);
        this.swipeRefreshLayout.setOnRefreshListener(new a());
        l();
    }

    public static DiscoveryFragment newInstance() {
        z.c("DiscoveryFragment", "newInstance");
        return new DiscoveryFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        com.ifengyu.intercom.g.a.a(this.k, this.l, (com.ifengyu.intercom.g.d.b) new g());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        z.c("DiscoveryFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        z.c("DiscoveryFragment", "onAttach");
        super.onAttach(context);
        this.g = (MainActivity) getActivity();
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        z.c("DiscoveryFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        z.c("DiscoveryFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.fragment_discovery, viewGroup, false);
        this.q = inflate;
        ButterKnife.bind(this, inflate);
        n();
        k();
        return this.q;
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        z.c("DiscoveryFragment", "onStart");
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* loaded from: classes2.dex */
    class f implements c.a {
        f() {
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void a(int i) {
            Intent intent = new Intent(DiscoveryFragment.this.g, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.SINGLE_ARTICLE");
            intent.putExtra("cms_single_article_id", ((DiscoveryArticleBean) DiscoveryFragment.this.j.get(i)).getId());
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void b(int i) {
            Intent intent = new Intent(DiscoveryFragment.this.g, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.SINGLE_ARTICLE");
            intent.putExtra("cms_single_article_id", ((DiscoveryArticleBean) DiscoveryFragment.this.i.get(i)).getId());
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void c() {
            Intent intent = new Intent(DiscoveryFragment.this.g, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.NEW_MAN_GUIDE");
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void d() {
            Intent intent = new Intent(DiscoveryFragment.this.g, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.EXAM_IFNO_QUERY");
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void a() {
            DiscoveryFragment.this.o();
        }

        @Override // com.ifengyu.intercom.ui.adapter.c.a
        public void b() {
            DiscoveryFragment.this.startActivity(new Intent(DiscoveryFragment.this.g, ExamQuestionBankActivity.class));
        }
    }
}
