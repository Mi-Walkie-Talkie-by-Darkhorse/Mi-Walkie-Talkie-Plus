package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BtEarBean;
import java.util.ArrayList;
import java.util.Map.Entry;

/* compiled from: BtEarAdapter */
public class b extends Adapter<a> implements OnClickListener {
    private Context a;
    private ArrayList<Entry<String, BtEarBean>> b;
    private C0031b c;
    private int d = -1;

    /* compiled from: BtEarAdapter */
    protected class a extends ViewHolder {
        public TextView a;
        public ImageView b;

        public a(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.bt_ear_name);
            this.b = (ImageView) view.findViewById(R.id.item_right_iv);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.adapter.b$b reason: collision with other inner class name */
    /* compiled from: BtEarAdapter */
    public interface C0031b {
        void a(View view, int i, Entry<String, BtEarBean> entry);
    }

    public b(Context context, ArrayList<Entry<String, BtEarBean>> arrayList) {
        this.a = context;
        this.b = arrayList;
    }

    /* renamed from: a */
    public a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.a).inflate(R.layout.item_scaned_bt_ear, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(a aVar, int i) {
        Entry entry = (Entry) this.b.get(i);
        BtEarBean btEarBean = (BtEarBean) entry.getValue();
        if (!TextUtils.isEmpty(btEarBean.getDevice().getName())) {
            aVar.a.setText(btEarBean.getDevice().getName());
        } else {
            aVar.a.setText((CharSequence) entry.getKey());
        }
        if (this.d == i) {
            aVar.b.setImageResource(R.drawable.bluetooth_icon_connect);
            aVar.itemView.setClickable(false);
        } else {
            aVar.b.setImageResource(R.drawable.icon_more_black);
            aVar.itemView.setClickable(true);
        }
        aVar.itemView.setTag(aVar);
        aVar.itemView.setOnClickListener(this);
    }

    public void onClick(View view) {
        int layoutPosition = ((a) view.getTag()).getLayoutPosition();
        this.d = layoutPosition;
        notifyDataSetChanged();
        Entry entry = (Entry) this.b.get(layoutPosition);
        if (this.c != null) {
            this.c.a(view, layoutPosition, entry);
        }
    }

    public int getItemCount() {
        return this.b.size();
    }

    public void setOnItemClickListener(C0031b bVar) {
        this.c = bVar;
    }

    public void a(int i) {
        this.d = i;
    }
}
