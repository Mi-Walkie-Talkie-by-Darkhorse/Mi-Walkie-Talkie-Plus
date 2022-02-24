package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BtEarBean;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: BtEarAdapter.java */
/* loaded from: classes2.dex */
public class b extends RecyclerView.g<a> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f6257a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<Map.Entry<String, BtEarBean>> f6258b;

    /* renamed from: c  reason: collision with root package name */
    private AbstractC0162b f6259c;
    private int d = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: BtEarAdapter.java */
    /* loaded from: classes2.dex */
    public class a extends RecyclerView.y {

        /* renamed from: a  reason: collision with root package name */
        public TextView f6260a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f6261b;

        public a(b bVar, View view) {
            super(view);
            this.f6260a = (TextView) view.findViewById(R.id.bt_ear_name);
            this.f6261b = (ImageView) view.findViewById(R.id.item_right_iv);
        }
    }

    /* compiled from: BtEarAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.adapter.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface AbstractC0162b {
        void a(View view, int i, Map.Entry<String, BtEarBean> entry);
    }

    public b(Context context, ArrayList<Map.Entry<String, BtEarBean>> arrayList) {
        this.f6257a = context;
        this.f6258b = arrayList;
    }

    /* renamed from: a */
    public void onBindViewHolder(a aVar, int i) {
        Map.Entry<String, BtEarBean> entry = this.f6258b.get(i);
        BtEarBean value = entry.getValue();
        if (!TextUtils.isEmpty(value.getDevice().getName())) {
            aVar.f6260a.setText(value.getDevice().getName());
        } else {
            aVar.f6260a.setText(entry.getKey());
        }
        if (this.d == i) {
            aVar.f6261b.setImageResource(R.drawable.bluetooth_icon_connect);
            aVar.itemView.setClickable(false);
        } else {
            aVar.f6261b.setImageResource(R.drawable.icon_more_black);
            aVar.itemView.setClickable(true);
        }
        aVar.itemView.setTag(aVar);
        aVar.itemView.setOnClickListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f6258b.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int layoutPosition = ((a) view.getTag()).getLayoutPosition();
        this.d = layoutPosition;
        notifyDataSetChanged();
        Map.Entry<String, BtEarBean> entry = this.f6258b.get(layoutPosition);
        AbstractC0162b bVar = this.f6259c;
        if (bVar != null) {
            bVar.a(view, layoutPosition, entry);
        }
    }

    public void setOnItemClickListener(AbstractC0162b bVar) {
        this.f6259c = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(this, LayoutInflater.from(this.f6257a).inflate(R.layout.item_scaned_bt_ear, viewGroup, false));
    }

    public void a(int i) {
        this.d = i;
    }
}
