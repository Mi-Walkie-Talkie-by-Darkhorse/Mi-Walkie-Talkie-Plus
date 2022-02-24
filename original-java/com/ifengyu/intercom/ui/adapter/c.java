package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.i.j0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.ui.widget.view.MyColorPointHintView;
import com.jude.rollviewpager.RollPagerView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

/* compiled from: DiscoveryFragmentAdapter.java */
/* loaded from: classes2.dex */
public class c extends RecyclerView.g {

    /* renamed from: a  reason: collision with root package name */
    private Animation f6262a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<DiscoveryArticleBean> f6263b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<DiscoveryArticleBean> f6264c;
    private Context d;
    private l e;
    private a f;
    private DisplayImageOptions g = new DisplayImageOptions.Builder().showImageOnLoading(R.drawable.discovery_loading_picture).showImageForEmptyUri(R.drawable.discovery_loading_picture).showImageOnFail(R.drawable.discovery_loading_picture).cacheInMemory(true).cacheOnDisk(true).build();

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void a(int i);

        void b();

        void b(int i);

        void c();

        void d();
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* loaded from: classes2.dex */
    class b extends RecyclerView.y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        TextView f6265a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f6266b;

        public b(View view) {
            super(view);
            this.f6265a = (TextView) view.findViewById(R.id.load_more_text);
            this.f6266b = (ImageView) view.findViewById(R.id.load_more_icon);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.itemView.setClickable(false);
            this.f6265a.setText(R.string.loading);
            this.f6266b.startAnimation(c.this.f6262a);
            this.f6266b.setVisibility(0);
            if (c.this.f != null) {
                c.this.f.a();
            }
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0163c extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        RollPagerView f6268a;

        /* compiled from: DiscoveryFragmentAdapter.java */
        /* renamed from: com.ifengyu.intercom.ui.adapter.c$c$a */
        /* loaded from: classes2.dex */
        class a implements com.jude.rollviewpager.b {
            a(c cVar) {
            }

            @Override // com.jude.rollviewpager.b
            public void a(int i) {
                if (c.this.f != null) {
                    c.this.f.b(i);
                }
            }
        }

        public C0163c(View view) {
            super(view);
            RollPagerView rollPagerView = (RollPagerView) view.findViewById(R.id.roll_pager_view);
            this.f6268a = rollPagerView;
            rollPagerView.setAnimationDurtion(1000);
            this.f6268a.setHintView(new MyColorPointHintView(c.this.d, Color.parseColor("#FF0076FF"), Color.parseColor("#FFFFFFFF")));
            this.f6268a.setOnItemClickListener(new a(c.this));
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* loaded from: classes2.dex */
    class d extends RecyclerView.y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        TextView f6271a;

        /* renamed from: b  reason: collision with root package name */
        TextView f6272b;

        /* renamed from: c  reason: collision with root package name */
        TextView f6273c;
        TextView d;
        ImageView e;

        public d(View view) {
            super(view);
            this.f6271a = (TextView) view.findViewById(R.id.item_title);
            this.f6272b = (TextView) view.findViewById(R.id.item_content);
            this.f6273c = (TextView) view.findViewById(R.id.item_time_day);
            this.d = (TextView) view.findViewById(R.id.item_time_month);
            this.e = (ImageView) view.findViewById(R.id.item_picture);
            this.f6273c.setTypeface(p.f5323a);
            this.d.setTypeface(p.f5323a);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (c.this.f != null) {
                c.this.f.a(getLayoutPosition() - 2);
            }
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* loaded from: classes2.dex */
    class e extends RecyclerView.y implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f6274a;

        /* renamed from: b  reason: collision with root package name */
        LinearLayout f6275b;

        /* renamed from: c  reason: collision with root package name */
        LinearLayout f6276c;

        public e(View view) {
            super(view);
            this.f6274a = (LinearLayout) view.findViewById(R.id.info_query_item_1);
            this.f6275b = (LinearLayout) view.findViewById(R.id.info_query_item_2);
            this.f6276c = (LinearLayout) view.findViewById(R.id.info_query_item_3);
            this.f6274a.setOnClickListener(this);
            this.f6275b.setOnClickListener(this);
            this.f6276c.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (c.this.f != null) {
                switch (view.getId()) {
                    case R.id.info_query_item_1 /* 2131296729 */:
                        c.this.f.c();
                        return;
                    case R.id.info_query_item_2 /* 2131296730 */:
                        c.this.f.d();
                        return;
                    case R.id.info_query_item_3 /* 2131296731 */:
                        c.this.f.b();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public c(ArrayList<DiscoveryArticleBean> arrayList, ArrayList<DiscoveryArticleBean> arrayList2, Context context) {
        this.f6263b = arrayList;
        this.f6264c = arrayList2;
        this.d = context;
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        this.f6262a = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        if (this.f6264c.size() == 0) {
            return 2;
        }
        return this.f6264c.size() + 2 + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        return i == getItemCount() - 1 ? 3 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onBindViewHolder(RecyclerView.y yVar, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0) {
            l lVar = this.e;
            if (lVar != null) {
                lVar.notifyDataSetChanged();
                return;
            }
            C0163c cVar = (C0163c) yVar;
            l lVar2 = new l(this.f6263b, cVar.f6268a);
            this.e = lVar2;
            cVar.f6268a.setAdapter(lVar2);
        } else if (itemViewType == 2) {
            d dVar = (d) yVar;
            DiscoveryArticleBean discoveryArticleBean = this.f6264c.get(i - 2);
            dVar.f6271a.setText(discoveryArticleBean.getTitle());
            dVar.f6272b.setText(discoveryArticleBean.getExcerpt());
            long time = discoveryArticleBean.getMeta().getFirst_published_at().getTime();
            dVar.f6273c.setText(j0.e(time));
            dVar.d.setText(j0.f(time));
            String medium = discoveryArticleBean.getHeader_image_url().getMedium();
            if (medium == null) {
                ImageLoader.getInstance().displayImage((String) null, dVar.e, this.g);
            } else if (medium.toLowerCase().contains("http:") || medium.toLowerCase().contains("https:")) {
                ImageLoader.getInstance().displayImage(medium, dVar.e, this.g);
            } else {
                ImageLoader instance = ImageLoader.getInstance();
                instance.displayImage("https://cms.ifengyu.com" + medium, dVar.e, this.g);
            }
        } else if (itemViewType == 3) {
            b bVar = (b) yVar;
            bVar.itemView.setClickable(true);
            bVar.f6265a.setText(R.string.load_more);
            bVar.f6266b.clearAnimation();
            bVar.f6266b.setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.y onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new C0163c(LayoutInflater.from(this.d).inflate(R.layout.pic_roll_poling_view, viewGroup, false));
        }
        if (i == 1) {
            return new e(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_info_query_item, viewGroup, false));
        }
        if (i == 3) {
            return new b(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_load_more, viewGroup, false));
        }
        return new d(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_info_content_item, viewGroup, false));
    }

    public void setOnAllItemClickListener(a aVar) {
        this.f = aVar;
    }

    public void a(ArrayList<DiscoveryArticleBean> arrayList) {
        this.f6264c = arrayList;
    }

    public void b(ArrayList<DiscoveryArticleBean> arrayList) {
        l lVar = this.e;
        if (lVar != null) {
            lVar.a(arrayList);
        }
    }
}
