package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SelectDeviceAdapter */
public class m extends Adapter<b> {
    /* access modifiers changed from: private */
    public ArrayList<Boolean> a;
    private boolean b;
    /* access modifiers changed from: private */
    public int c = 0;
    private ConnectionConfiguration d;
    /* access modifiers changed from: private */
    public a e;
    private LayoutInflater f;
    /* access modifiers changed from: private */
    public List<ConnectionConfiguration> g;
    private ConnectionConfiguration h;

    /* compiled from: SelectDeviceAdapter */
    public interface a {
        void a();

        void a(View view, int i, ConnectionConfiguration connectionConfiguration);

        void a(View view, int i, ConnectionConfiguration connectionConfiguration, boolean z);

        void b();
    }

    /* compiled from: SelectDeviceAdapter */
    public class b extends ViewHolder {
        public LinearLayout a;
        public TextView b;
        public TextView c;
        public TextView d;
        public ImageView e;
        public AppCompatCheckBox f;

        public b(View view) {
            super(view);
            this.a = (LinearLayout) view.findViewById(R.id.bottom_bg);
            this.b = (TextView) view.findViewById(R.id.tv_device_name);
            this.c = (TextView) view.findViewById(R.id.tv_device_selected);
            this.d = (TextView) view.findViewById(R.id.tv_device_type);
            this.e = (ImageView) view.findViewById(R.id.device_type_img);
            this.f = (AppCompatCheckBox) view.findViewById(R.id.right_checkbox);
        }
    }

    public m(Context context, List<ConnectionConfiguration> list, ConnectionConfiguration connectionConfiguration) {
        this.f = LayoutInflater.from(context);
        this.g = list;
        this.h = connectionConfiguration;
    }

    public void setOnItemClickListener(a aVar) {
        this.e = aVar;
    }

    /* renamed from: a */
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(this.f.inflate(R.layout.item_select_device, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(final b bVar, final int i) {
        this.d = (ConnectionConfiguration) this.g.get(i);
        bVar.b.setText(this.d.b());
        if (this.h == null || !this.h.c().equals(this.d.c())) {
            bVar.c.setText(this.g.size() == 1 ? MiTalkiApp.a().getString(R.string.click_to_connect) : MiTalkiApp.a().getString(R.string.click_to_switch));
            bVar.c.setTextColor(ad.d(R.color.black60));
            bVar.a.setBackground(ad.b().getDrawable(R.drawable.equipment_btn_board_normal));
        } else {
            TextView textView = bVar.c;
            String string = this.h.a() ? MiTalkiApp.a().getString(R.string.have_connected) : this.g.size() == 1 ? MiTalkiApp.a().getString(R.string.click_to_connect) : MiTalkiApp.a().getString(R.string.click_to_switch);
            textView.setText(string);
            bVar.c.setTextColor(ad.d(this.h.a() ? R.color.select_color : R.color.black60));
            if (this.h.a()) {
                bVar.a.setBackground(ad.b().getDrawable(R.drawable.equipment_btn_board_connect));
            } else {
                bVar.a.setBackground(ad.b().getDrawable(R.drawable.equipment_btn_board_normal));
            }
        }
        switch (this.d.f()) {
            case 1:
                bVar.d.setText(R.string.device_dolphin_name);
                bVar.e.setImageResource(R.drawable.equipment_img_dolphin);
                break;
            case 4:
                bVar.d.setText("SN：" + this.d.c().replace(":", "").substring(6).toUpperCase());
                bVar.e.setImageResource(R.drawable.equipment_img_shark);
                break;
            case 5:
                bVar.d.setText("SN：" + this.d.c().replace(":", "").substring(6).toUpperCase());
                if (this.d.g() != 1) {
                    bVar.e.setImageResource(R.drawable.equipment_img_seal_white);
                    break;
                } else {
                    bVar.e.setImageResource(R.drawable.equipment_img_seal_blue);
                    break;
                }
        }
        if (this.b) {
            bVar.e.setVisibility(8);
            bVar.f.setVisibility(0);
            bVar.itemView.setClickable(false);
            bVar.itemView.setOnClickListener(null);
            bVar.itemView.setOnLongClickListener(null);
            bVar.f.setOnCheckedChangeListener(null);
            bVar.f.setChecked(((Boolean) this.a.get(i)).booleanValue());
            bVar.f.setOnCheckedChangeListener(new OnCheckedChangeListener() {
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        m.this.c = m.this.c + 1;
                    } else {
                        m.this.c = m.this.c - 1;
                    }
                    if (m.this.c == m.this.g.size()) {
                        m.this.e.a();
                    } else {
                        m.this.e.b();
                    }
                    m.this.a.set(i, Boolean.valueOf(z));
                }
            });
            return;
        }
        bVar.e.setVisibility(0);
        bVar.f.setVisibility(8);
        bVar.itemView.setClickable(true);
        bVar.itemView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                int layoutPosition = bVar.getLayoutPosition();
                if (layoutPosition < m.this.g.size() && m.this.e != null) {
                    m.this.e.a(bVar.itemView, layoutPosition, (ConnectionConfiguration) m.this.g.get(layoutPosition));
                }
            }
        });
        bVar.itemView.setOnLongClickListener(new OnLongClickListener() {
            public boolean onLongClick(View view) {
                int layoutPosition = bVar.getLayoutPosition();
                if (layoutPosition < m.this.g.size() && m.this.e != null) {
                    m.this.e.a(bVar.itemView, layoutPosition, (ConnectionConfiguration) m.this.g.get(layoutPosition), false);
                }
                return true;
            }
        });
        bVar.f.setOnCheckedChangeListener(null);
    }

    public int getItemCount() {
        if (this.g == null) {
            return 0;
        }
        return this.g.size();
    }

    public void a(ConnectionConfiguration connectionConfiguration) {
        this.h = connectionConfiguration;
    }

    public void a(ArrayList<Boolean> arrayList) {
        this.a = arrayList;
    }

    public void a(boolean z) {
        this.b = z;
        this.c = 0;
    }
}
