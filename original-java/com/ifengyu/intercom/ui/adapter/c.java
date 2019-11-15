package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ac;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.ui.widget.view.MyColorPointHintView;
import com.jude.rollviewpager.RollPagerView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

/* compiled from: DiscoveryFragmentAdapter */
public class c extends Adapter {
    /* access modifiers changed from: private */
    public Animation a;
    private ArrayList<DiscoveryArticleBean> b;
    private ArrayList<DiscoveryArticleBean> c;
    /* access modifiers changed from: private */
    public Context d;
    private final int e = 0;
    private final int f = 1;
    private final int g = 2;
    private final int h = 3;
    private PicLoopPagerAdapter i;
    /* access modifiers changed from: private */
    public a j;
    private DisplayImageOptions k;
    private boolean l = false;

    /* compiled from: DiscoveryFragmentAdapter */
    public interface a {
        void a();

        void a(int i);

        void b();

        void b(int i);

        void c();

        void d();
    }

    /* compiled from: DiscoveryFragmentAdapter */
    class b extends ViewHolder implements OnClickListener {
        TextView a;
        ImageView b;

        public b(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.load_more_text);
            this.b = (ImageView) view.findViewById(R.id.load_more_icon);
            view.setOnClickListener(this);
        }

        public void onClick(View view) {
            this.itemView.setClickable(false);
            this.a.setText(R.string.loading);
            this.b.startAnimation(c.this.a);
            this.b.setVisibility(0);
            if (c.this.j != null) {
                c.this.j.d();
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.adapter.c$c reason: collision with other inner class name */
    /* compiled from: DiscoveryFragmentAdapter */
    class C0032c extends ViewHolder {
        RollPagerView a;

        public C0032c(View view) {
            super(view);
            this.a = (RollPagerView) view.findViewById(R.id.roll_pager_view);
            this.a.setAnimationDurtion(1000);
            this.a.setHintView(new MyColorPointHintView(c.this.d, Color.parseColor("#FF0076FF"), Color.parseColor("#FFFFFFFF")));
            this.a.setOnItemClickListener(new com.jude.rollviewpager.b(c.this) {
                public void a(int i) {
                    if (c.this.j != null) {
                        c.this.j.a(i);
                    }
                }
            });
        }
    }

    /* compiled from: DiscoveryFragmentAdapter */
    class d extends ViewHolder implements OnClickListener {
        TextView a;
        TextView b;
        TextView c;
        TextView d;
        ImageView e;

        public d(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.item_title);
            this.b = (TextView) view.findViewById(R.id.item_content);
            this.c = (TextView) view.findViewById(R.id.item_time_day);
            this.d = (TextView) view.findViewById(R.id.item_time_month);
            this.e = (ImageView) view.findViewById(R.id.item_picture);
            this.c.setTypeface(l.b);
            this.d.setTypeface(l.b);
            view.setOnClickListener(this);
        }

        public void onClick(View view) {
            if (c.this.j != null) {
                c.this.j.b(getLayoutPosition() - 2);
            }
        }
    }

    /* compiled from: DiscoveryFragmentAdapter */
    class e extends ViewHolder implements OnClickListener {
        LinearLayout a;
        LinearLayout b;
        LinearLayout c;

        public e(View view) {
            super(view);
            this.a = (LinearLayout) view.findViewById(R.id.info_query_item_1);
            this.b = (LinearLayout) view.findViewById(R.id.info_query_item_2);
            this.c = (LinearLayout) view.findViewById(R.id.info_query_item_3);
            this.a.setOnClickListener(this);
            this.b.setOnClickListener(this);
            this.c.setOnClickListener(this);
        }

        public void onClick(View view) {
            if (c.this.j != null) {
                switch (view.getId()) {
                    case R.id.info_query_item_1 /*2131755548*/:
                        c.this.j.a();
                        return;
                    case R.id.info_query_item_2 /*2131755549*/:
                        c.this.j.b();
                        return;
                    case R.id.info_query_item_3 /*2131755550*/:
                        c.this.j.c();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public c(ArrayList<DiscoveryArticleBean> arrayList, ArrayList<DiscoveryArticleBean> arrayList2, Context context) {
        this.b = arrayList;
        this.c = arrayList2;
        this.d = context;
        this.k = new Builder().showImageOnLoading((int) R.drawable.discovery_loading_picture).showImageForEmptyUri((int) R.drawable.discovery_loading_picture).showImageOnFail((int) R.drawable.discovery_loading_picture).cacheInMemory(true).cacheOnDisk(true).build();
        this.a = AnimationUtils.loadAnimation(context, R.anim.rotate);
        this.a.setInterpolator(new LinearInterpolator());
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            return new C0032c(LayoutInflater.from(this.d).inflate(R.layout.pic_roll_poling_view, viewGroup, false));
        }
        if (i2 == 1) {
            return new e(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_info_query_item, viewGroup, false));
        }
        if (i2 == 3) {
            return new b(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_load_more, viewGroup, false));
        }
        return new d(LayoutInflater.from(this.d).inflate(R.layout.discovery_fragment_info_content_item, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i2) {
        switch (getItemViewType(i2)) {
            case 0:
                if (this.i != null) {
                    this.i.notifyDataSetChanged();
                    return;
                }
                C0032c cVar = (C0032c) viewHolder;
                this.i = new PicLoopPagerAdapter(this.b, cVar.a);
                cVar.a.setAdapter(this.i);
                return;
            case 2:
                d dVar = (d) viewHolder;
                DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) this.c.get(i2 - 2);
                dVar.a.setText(discoveryArticleBean.getTitle());
                dVar.b.setText(discoveryArticleBean.getExcerpt());
                long time = discoveryArticleBean.getMeta().getFirst_published_at().getTime();
                dVar.c.setText(ac.b(time));
                dVar.d.setText(ac.c(time));
                String medium = discoveryArticleBean.getHeader_image_url().getMedium();
                if (medium == null) {
                    ImageLoader.getInstance().displayImage((String) null, dVar.e, this.k);
                    return;
                } else if (medium.toLowerCase().contains("http:") || medium.toLowerCase().contains("https:")) {
                    ImageLoader.getInstance().displayImage(medium, dVar.e, this.k);
                    return;
                } else {
                    ImageLoader.getInstance().displayImage(com.ifengyu.intercom.network.d.e + medium, dVar.e, this.k);
                    return;
                }
            case 3:
                b bVar = (b) viewHolder;
                bVar.itemView.setClickable(true);
                bVar.a.setText(R.string.load_more);
                bVar.b.clearAnimation();
                bVar.b.setVisibility(8);
                return;
            default:
                return;
        }
    }

    public int getItemCount() {
        if (this.c.size() == 0) {
            return 2;
        }
        if (this.l) {
            return this.c.size() + 2;
        }
        return this.c.size() + 2 + 1;
    }

    public int getItemViewType(int i2) {
        if (this.l) {
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 1) {
                return 1;
            }
            return 2;
        } else if (i2 == 0) {
            return 0;
        } else {
            if (i2 == 1) {
                return 1;
            }
            return i2 == getItemCount() + -1 ? 3 : 2;
        }
    }

    public void a(ArrayList<DiscoveryArticleBean> arrayList) {
        if (this.i != null) {
            this.i.a(arrayList);
        }
    }

    public void b(ArrayList<DiscoveryArticleBean> arrayList) {
        this.c = arrayList;
    }

    public void setOnAllItemClickListener(a aVar) {
        this.j = aVar;
    }

    public void a(boolean z) {
        this.l = z;
    }
}
