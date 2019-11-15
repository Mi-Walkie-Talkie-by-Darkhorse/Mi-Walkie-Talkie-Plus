package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.tencent.connect.common.Constants;

/* compiled from: InsertChannelDialog */
public class o extends b {
    /* access modifiers changed from: private */
    public static final String[] a = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};
    private static final String[] b = {"0", "2", "5", "7", "", "0", "2", "5", "7", ""};
    /* access modifiers changed from: private */
    public static final String[] c = {"0", "", "5", "", "", "0", "", "5"};
    private Activity d;
    /* access modifiers changed from: private */
    public c e;
    /* access modifiers changed from: private */
    public EditText f;
    /* access modifiers changed from: private */
    public EditText g;
    /* access modifiers changed from: private */
    public EditText h;
    /* access modifiers changed from: private */
    public EditText i;
    /* access modifiers changed from: private */
    public EditText j;
    /* access modifiers changed from: private */
    public EditText k;
    /* access modifiers changed from: private */
    public EditText l;
    /* access modifiers changed from: private */
    public a m;
    /* access modifiers changed from: private */
    public String n;
    private int o;
    /* access modifiers changed from: private */
    public LayoutInflater p;
    private TextWatcher q = new TextWatcher() {
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            s.b("InsertChannelDialog", "beforeTextChanged:s:" + charSequence + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            s.b("InsertChannelDialog", "onTextChanged:s:" + charSequence + " start:" + i + " before:" + i2 + " count:" + i3);
        }

        public void afterTextChanged(Editable editable) {
            s.b("InsertChannelDialog", "afterTextChanged:" + editable);
            if (editable.toString().length() == 1) {
                if (o.this.f.isFocused()) {
                    o.this.f.setFocusable(false);
                    o.this.f.setFocusableInTouchMode(false);
                    o.this.f.clearFocus();
                    o.this.g.setFocusable(true);
                    o.this.g.setFocusableInTouchMode(true);
                    o.this.g.requestFocus();
                } else if (o.this.g.isFocused()) {
                    o.this.g.setFocusable(false);
                    o.this.g.setFocusableInTouchMode(false);
                    o.this.g.clearFocus();
                    o.this.h.setFocusable(true);
                    o.this.h.setFocusableInTouchMode(true);
                    o.this.h.requestFocus();
                } else if (o.this.h.isFocused()) {
                    o.this.h.setFocusable(false);
                    o.this.h.setFocusableInTouchMode(false);
                    o.this.h.clearFocus();
                    o.this.i.setFocusable(true);
                    o.this.i.setFocusableInTouchMode(true);
                    o.this.i.requestFocus();
                } else if (o.this.i.isFocused()) {
                    o.this.i.setFocusable(false);
                    o.this.i.setFocusableInTouchMode(false);
                    o.this.i.clearFocus();
                    o.this.j.setFocusable(true);
                    o.this.j.setFocusableInTouchMode(true);
                    o.this.j.requestFocus();
                } else if (o.this.j.isFocused()) {
                    o.this.j.setFocusable(false);
                    o.this.j.setFocusableInTouchMode(false);
                    o.this.j.clearFocus();
                    o.this.k.setFocusable(true);
                    o.this.k.setFocusableInTouchMode(true);
                    o.this.k.requestFocus();
                } else if (o.this.k.isFocused()) {
                    o.this.k.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(o.this.f.getText().toString()) || TextUtils.isEmpty(o.this.g.getText().toString()) || TextUtils.isEmpty(o.this.h.getText().toString()) || TextUtils.isEmpty(o.this.i.getText().toString()) || TextUtils.isEmpty(o.this.j.getText().toString()) || TextUtils.isEmpty(o.this.k.getText().toString())) {
                o.this.l.setText("");
                return;
            }
            o.this.l.setText(o.c[Integer.parseInt(o.this.k.getText().toString())]);
        }
    };

    /* compiled from: InsertChannelDialog */
    class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            if (o.a == null || o.a.length <= 0) {
                return 0;
            }
            return o.a.length;
        }

        public Object getItem(int i) {
            if (o.a == null || o.a.length <= 0) {
                return null;
            }
            return o.a[i];
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) o.this.p.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) o.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(o.a[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) o.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(ad.d(R.color.channel_settting_choose_number));
                textView2.setText(o.a[i]);
                if (o.this.f.isFocused()) {
                    if (i == 3 || i == 6) {
                        return textView2;
                    }
                    textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                    textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                    return textView2;
                } else if (o.this.g.isFocused()) {
                    if (TextUtils.isEmpty(o.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (o.this.f.getText().toString().equals("1")) {
                        if (i == 3) {
                            return textView2;
                        }
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (i == 8 || i == 3) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (o.this.h.isFocused()) {
                    if (TextUtils.isEmpty(o.this.f.getText().toString()) || TextUtils.isEmpty(o.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (!o.this.g.getText().toString().equals("4") || !o.this.f.getText().toString().equals("1")) {
                        if (!o.this.g.getText().toString().equals("4") || !o.this.f.getText().toString().equals("4")) {
                            if (o.this.g.getText().toString().equals("3")) {
                            }
                            return textView2;
                        } else if (i == 10) {
                            return textView2;
                        } else {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                            return textView2;
                        }
                    } else if (i == 0 || i == 1 || i == 3 || i == 4 || i == 5) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (o.this.i.isFocused()) {
                    if (TextUtils.isEmpty(o.this.f.getText().toString()) || TextUtils.isEmpty(o.this.g.getText().toString()) || TextUtils.isEmpty(o.this.h.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!o.this.f.getText().toString().equals("1") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!o.this.f.getText().toString().equals("4") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (o.this.j.isFocused()) {
                    if (TextUtils.isEmpty(o.this.f.getText().toString()) || TextUtils.isEmpty(o.this.g.getText().toString()) || TextUtils.isEmpty(o.this.h.getText().toString()) || TextUtils.isEmpty(o.this.i.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!o.this.f.getText().toString().equals("1") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!o.this.f.getText().toString().equals("4") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (!o.this.k.isFocusable()) {
                    return textView2;
                } else {
                    if (TextUtils.isEmpty(o.this.f.getText().toString()) || TextUtils.isEmpty(o.this.g.getText().toString()) || TextUtils.isEmpty(o.this.h.getText().toString()) || TextUtils.isEmpty(o.this.i.getText().toString()) || TextUtils.isEmpty(o.this.j.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if ((!o.this.f.getText().toString().equals("1") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!o.this.f.getText().toString().equals("4") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals("0"))) {
                        if (i == 10 || i == 7 || i == 4 || i == 0) {
                            return textView2;
                        }
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                }
            }
        }
    }

    /* compiled from: InsertChannelDialog */
    class b implements OnItemClickListener {
        b() {
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (o.this.k.isFocused()) {
                    if (o.this.k.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(o.this.i.getText());
                        int selectionStart = Selection.getSelectionStart(o.this.i.getText());
                        int selectionStart2 = o.this.k.getSelectionStart();
                        if (selectionStart2 > 0) {
                            o.this.k.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            o.this.k.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        o.this.j.setText("");
                        o.this.k.clearFocus();
                        o.this.j.setFocusable(true);
                        o.this.j.setFocusableInTouchMode(true);
                        o.this.j.requestFocus();
                    }
                } else if (o.this.j.isFocused()) {
                    o.this.i.setText("");
                    o.this.j.clearFocus();
                    o.this.i.setFocusable(true);
                    o.this.i.setFocusableInTouchMode(true);
                    o.this.i.requestFocus();
                } else if (o.this.i.isFocused()) {
                    o.this.h.setText("");
                    o.this.i.clearFocus();
                    o.this.h.setFocusable(true);
                    o.this.h.setFocusableInTouchMode(true);
                    o.this.h.requestFocus();
                } else if (o.this.h.isFocused()) {
                    o.this.g.setText("");
                    o.this.h.clearFocus();
                    o.this.g.setFocusable(true);
                    o.this.g.setFocusableInTouchMode(true);
                    o.this.g.requestFocus();
                } else if (o.this.g.isFocused()) {
                    o.this.f.setText("");
                    o.this.g.clearFocus();
                    o.this.f.setFocusable(true);
                    o.this.f.setFocusableInTouchMode(true);
                    o.this.f.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = o.this.f.getText().toString();
                String obj2 = o.this.g.getText().toString();
                String obj3 = o.this.h.getText().toString();
                String obj4 = o.this.i.getText().toString();
                String obj5 = o.this.j.getText().toString();
                String obj6 = o.this.k.getText().toString();
                String obj7 = o.this.l.getText().toString();
                if (!v.a(o.this.f, o.this.g, o.this.h, o.this.i, o.this.j, o.this.k)) {
                    String sb2 = sb.append(obj).append(obj2).append(obj3).append(".").append(obj4).append(obj5).append(obj6).append(obj7).toString();
                    int a2 = v.a(sb2);
                    s.b("InsertChannelDialog", "freq:" + a2);
                    if ((a2 >= 144000000 && a2 <= 148000000) || (a2 >= 430000000 && a2 <= 440000000)) {
                        if (TextUtils.isEmpty(o.this.n)) {
                            if (o.this.e != null) {
                                o.this.e.a(sb2);
                            }
                        } else if (o.this.e != null) {
                            o.this.e.b(sb2);
                        }
                        o.this.dismiss();
                    }
                }
            } else {
                if (o.this.f.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        return;
                    }
                } else if (o.this.g.isFocused()) {
                    if (TextUtils.isEmpty(o.this.f.getText().toString())) {
                        return;
                    }
                    if (o.this.f.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (!(i == 8 || i == 3)) {
                        return;
                    }
                } else if (o.this.h.isFocused()) {
                    if (v.a(o.this.f, o.this.g)) {
                        return;
                    }
                    if (!o.this.g.getText().toString().equals("4") || !o.this.f.getText().toString().equals("1")) {
                        if (!o.this.g.getText().toString().equals("4") || !o.this.f.getText().toString().equals("4")) {
                            if (o.this.g.getText().toString().equals("3")) {
                            }
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (o.this.i.isFocused()) {
                    if (v.a(o.this.f, o.this.g, o.this.h)) {
                        return;
                    }
                    if (((o.this.f.getText().toString().equals("1") && o.this.g.getText().toString().equals("4") && o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (o.this.f.getText().toString().equals("4") && o.this.g.getText().toString().equals("4") && o.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (o.this.j.isFocused()) {
                    if (v.a(o.this.f, o.this.g, o.this.h, o.this.i)) {
                        return;
                    }
                    if (((o.this.f.getText().toString().equals("1") && o.this.g.getText().toString().equals("4") && o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (o.this.f.getText().toString().equals("4") && o.this.g.getText().toString().equals("4") && o.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (o.this.k.isFocused()) {
                    if (v.a(o.this.f, o.this.g, o.this.h, o.this.i, o.this.j)) {
                        return;
                    }
                    if ((!o.this.f.getText().toString().equals("1") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!o.this.f.getText().toString().equals("4") || !o.this.g.getText().toString().equals("4") || !o.this.h.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (o.this.f.isFocused()) {
                    o.this.f.setText(o.a[i]);
                } else if (o.this.g.isFocused()) {
                    o.this.g.setText(o.a[i]);
                } else if (o.this.h.isFocused()) {
                    o.this.h.setText(o.a[i]);
                } else if (o.this.i.isFocused()) {
                    o.this.i.setText(o.a[i]);
                } else if (o.this.j.isFocused()) {
                    o.this.j.setText(o.a[i]);
                } else if (o.this.k.isFocused() && o.this.k.getText().length() == 0) {
                    o.this.k.setText(o.a[i]);
                }
            }
        }
    }

    /* compiled from: InsertChannelDialog */
    public interface c {
        void a(String str);

        void b(String str);
    }

    public o(Activity activity, String str, int i2) {
        super(activity);
        this.d = activity;
        this.p = LayoutInflater.from(activity);
        this.n = str;
        this.o = i2;
        a[a.length - 1] = this.d.getString(R.string.common_select);
    }

    public void a(c cVar) {
        this.e = cVar;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel);
        a(this.d);
        a();
    }

    public void a() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        switch (this.o) {
            case 0:
                textView.setText(R.string.channel_custom);
                break;
            case 1:
                textView.setText(R.string.emission_frequency);
                break;
            case 2:
                textView.setText(R.string.receive_frequency);
                break;
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        this.m = new a();
        gridView.setAdapter(this.m);
        gridView.setOnItemClickListener(new b());
        this.f = (EditText) findViewById(R.id.et_input_num_1);
        this.g = (EditText) findViewById(R.id.et_input_num_2);
        this.h = (EditText) findViewById(R.id.et_input_num_3);
        this.i = (EditText) findViewById(R.id.et_input_num_4);
        this.j = (EditText) findViewById(R.id.et_input_num_5);
        this.k = (EditText) findViewById(R.id.et_input_num_6);
        this.l = (EditText) findViewById(R.id.et_input_num_7);
        this.f.setTextIsSelectable(true);
        this.g.setTextIsSelectable(true);
        this.h.setTextIsSelectable(true);
        this.i.setTextIsSelectable(true);
        this.j.setTextIsSelectable(true);
        this.k.setTextIsSelectable(true);
        this.f.setOnLongClickListener(null);
        this.g.setOnClickListener(null);
        this.f.setFocusable(false);
        this.f.setFocusableInTouchMode(false);
        this.g.setFocusable(false);
        this.g.setFocusableInTouchMode(false);
        this.h.setFocusable(false);
        this.h.setFocusableInTouchMode(false);
        this.i.setFocusable(false);
        this.i.setFocusableInTouchMode(false);
        this.j.setFocusable(false);
        this.j.setFocusableInTouchMode(false);
        this.k.setFocusable(false);
        this.k.setFocusableInTouchMode(false);
        this.l.setFocusable(false);
        this.l.setFocusableInTouchMode(false);
        this.l.setKeyListener(null);
        this.f.addTextChangedListener(this.q);
        this.g.addTextChangedListener(this.q);
        this.h.addTextChangedListener(this.q);
        this.i.addTextChangedListener(this.q);
        this.j.addTextChangedListener(this.q);
        this.k.addTextChangedListener(this.q);
        this.j.setCustomSelectionActionModeCallback(new Callback() {
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            public void onDestroyActionMode(ActionMode actionMode) {
            }
        });
        this.f.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText1 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
        this.g.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText2 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
        this.h.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText3 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
        this.i.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText4 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
        this.j.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText5 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
        this.k.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText6 has Focus");
                    o.this.m.notifyDataSetChanged();
                }
            }
        });
    }

    public void show() {
        super.show();
        if (!TextUtils.isEmpty(this.n)) {
            String replace = this.n.replace(".", "");
            if (this.n != null) {
                int a2 = v.a(this.n);
                if ((a2 < 430000000 && a2 >= 400000000) || (a2 > 440000000 && a2 <= 470000000)) {
                    replace = null;
                }
            }
            if (replace == null || replace.length() != 7) {
                this.f.setFocusable(true);
                this.f.setFocusableInTouchMode(true);
                this.f.requestFocus();
            } else {
                char[] charArray = replace.toCharArray();
                this.f.setText(String.valueOf(charArray[0]));
                this.g.setText(String.valueOf(charArray[1]));
                this.h.setText(String.valueOf(charArray[2]));
                this.i.setText(String.valueOf(charArray[3]));
                this.j.setText(String.valueOf(charArray[4]));
                this.k.setText(String.valueOf(charArray[5]));
                this.l.setText(String.valueOf(charArray[6]));
                this.k.setFocusable(true);
                this.k.setFocusableInTouchMode(true);
                this.k.requestFocus();
                this.k.setSelection(1);
            }
        } else {
            this.f.setFocusable(true);
            this.f.setFocusableInTouchMode(true);
            this.f.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    /* access modifiers changed from: protected */
    public void a(int i2) {
        super.a(i2);
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }
}
