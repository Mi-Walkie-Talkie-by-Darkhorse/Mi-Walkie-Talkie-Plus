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

/* compiled from: InsertChannelDialog400To470 */
public class p extends b {
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
                if (p.this.f.isFocused()) {
                    p.this.f.setFocusable(false);
                    p.this.f.setFocusableInTouchMode(false);
                    p.this.f.clearFocus();
                    p.this.g.setFocusable(true);
                    p.this.g.setFocusableInTouchMode(true);
                    p.this.g.requestFocus();
                } else if (p.this.g.isFocused()) {
                    p.this.g.setFocusable(false);
                    p.this.g.setFocusableInTouchMode(false);
                    p.this.g.clearFocus();
                    p.this.h.setFocusable(true);
                    p.this.h.setFocusableInTouchMode(true);
                    p.this.h.requestFocus();
                } else if (p.this.h.isFocused()) {
                    p.this.h.setFocusable(false);
                    p.this.h.setFocusableInTouchMode(false);
                    p.this.h.clearFocus();
                    p.this.i.setFocusable(true);
                    p.this.i.setFocusableInTouchMode(true);
                    p.this.i.requestFocus();
                } else if (p.this.i.isFocused()) {
                    p.this.i.setFocusable(false);
                    p.this.i.setFocusableInTouchMode(false);
                    p.this.i.clearFocus();
                    p.this.j.setFocusable(true);
                    p.this.j.setFocusableInTouchMode(true);
                    p.this.j.requestFocus();
                } else if (p.this.j.isFocused()) {
                    p.this.j.setFocusable(false);
                    p.this.j.setFocusableInTouchMode(false);
                    p.this.j.clearFocus();
                    p.this.k.setFocusable(true);
                    p.this.k.setFocusableInTouchMode(true);
                    p.this.k.requestFocus();
                } else if (p.this.k.isFocused()) {
                    p.this.k.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString()) || TextUtils.isEmpty(p.this.h.getText().toString()) || TextUtils.isEmpty(p.this.i.getText().toString()) || TextUtils.isEmpty(p.this.j.getText().toString()) || TextUtils.isEmpty(p.this.k.getText().toString())) {
                p.this.l.setText("");
                return;
            }
            p.this.l.setText(p.c[Integer.parseInt(p.this.k.getText().toString())]);
        }
    };

    /* compiled from: InsertChannelDialog400To470 */
    class a extends BaseAdapter {
        a() {
        }

        public int getCount() {
            if (p.a == null || p.a.length <= 0) {
                return 0;
            }
            return p.a.length;
        }

        public Object getItem(int i) {
            if (p.a == null || p.a.length <= 0) {
                return null;
            }
            return p.a[i];
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) p.this.p.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) p.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(p.a[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) p.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(ad.d(R.color.channel_settting_choose_number));
                textView2.setText(p.a[i]);
                if (p.this.f.isFocused()) {
                    if (i == 3 || i == 6) {
                        return textView2;
                    }
                    textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                    textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                    return textView2;
                } else if (p.this.g.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (p.this.f.getText().toString().equals("1")) {
                        if (i == 3) {
                            return textView2;
                        }
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (i != 1 && i != 2) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (p.this.h.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (!p.this.g.getText().toString().equals("4") || !p.this.f.getText().toString().equals("1")) {
                        if (!p.this.g.getText().toString().equals("7") || !p.this.f.getText().toString().equals("4")) {
                            if (p.this.g.getText().toString().equals("3")) {
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
                } else if (p.this.i.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString()) || TextUtils.isEmpty(p.this.h.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!p.this.f.getText().toString().equals("1") || !p.this.g.getText().toString().equals("4") || !p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f.getText().toString().equals("4") || !p.this.g.getText().toString().equals("7") || !p.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (p.this.j.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString()) || TextUtils.isEmpty(p.this.h.getText().toString()) || TextUtils.isEmpty(p.this.i.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!p.this.f.getText().toString().equals("1") || !p.this.g.getText().toString().equals("4") || !p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f.getText().toString().equals("4") || !p.this.g.getText().toString().equals("7") || !p.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (!p.this.k.isFocusable()) {
                    return textView2;
                } else {
                    if (TextUtils.isEmpty(p.this.f.getText().toString()) || TextUtils.isEmpty(p.this.g.getText().toString()) || TextUtils.isEmpty(p.this.h.getText().toString()) || TextUtils.isEmpty(p.this.i.getText().toString()) || TextUtils.isEmpty(p.this.j.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if ((!p.this.f.getText().toString().equals("1") || !p.this.g.getText().toString().equals("4") || !p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f.getText().toString().equals("4") || !p.this.g.getText().toString().equals("7") || !p.this.h.getText().toString().equals("0"))) {
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

    /* compiled from: InsertChannelDialog400To470 */
    private class b implements OnItemClickListener {
        private b() {
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (p.this.k.isFocused()) {
                    if (p.this.k.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(p.this.i.getText());
                        int selectionStart = Selection.getSelectionStart(p.this.i.getText());
                        int selectionStart2 = p.this.k.getSelectionStart();
                        if (selectionStart2 > 0) {
                            p.this.k.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            p.this.k.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        p.this.j.setText("");
                        p.this.k.clearFocus();
                        p.this.j.setFocusable(true);
                        p.this.j.setFocusableInTouchMode(true);
                        p.this.j.requestFocus();
                    }
                } else if (p.this.j.isFocused()) {
                    p.this.i.setText("");
                    p.this.j.clearFocus();
                    p.this.i.setFocusable(true);
                    p.this.i.setFocusableInTouchMode(true);
                    p.this.i.requestFocus();
                } else if (p.this.i.isFocused()) {
                    p.this.h.setText("");
                    p.this.i.clearFocus();
                    p.this.h.setFocusable(true);
                    p.this.h.setFocusableInTouchMode(true);
                    p.this.h.requestFocus();
                } else if (p.this.h.isFocused()) {
                    p.this.g.setText("");
                    p.this.h.clearFocus();
                    p.this.g.setFocusable(true);
                    p.this.g.setFocusableInTouchMode(true);
                    p.this.g.requestFocus();
                } else if (p.this.g.isFocused()) {
                    p.this.f.setText("");
                    p.this.g.clearFocus();
                    p.this.f.setFocusable(true);
                    p.this.f.setFocusableInTouchMode(true);
                    p.this.f.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = p.this.f.getText().toString();
                String obj2 = p.this.g.getText().toString();
                String obj3 = p.this.h.getText().toString();
                String obj4 = p.this.i.getText().toString();
                String obj5 = p.this.j.getText().toString();
                String obj6 = p.this.k.getText().toString();
                String obj7 = p.this.l.getText().toString();
                if (!v.a(p.this.f, p.this.g, p.this.h, p.this.i, p.this.j, p.this.k)) {
                    String sb2 = sb.append(obj).append(obj2).append(obj3).append(".").append(obj4).append(obj5).append(obj6).append(obj7).toString();
                    int a2 = v.a(sb2);
                    s.b("InsertChannelDialog", "freq:" + a2);
                    if ((a2 >= 144000000 && a2 <= 148000000) || (a2 >= 400000000 && a2 <= 470000000)) {
                        if (TextUtils.isEmpty(p.this.n)) {
                            if (p.this.e != null) {
                                p.this.e.a(sb2);
                            }
                        } else if (p.this.e != null) {
                            p.this.e.b(sb2);
                        }
                        p.this.dismiss();
                    }
                }
            } else {
                if (p.this.f.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        return;
                    }
                } else if (p.this.g.isFocused()) {
                    if (TextUtils.isEmpty(p.this.f.getText().toString())) {
                        return;
                    }
                    if (p.this.f.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i == 1 || i == 2) {
                        return;
                    }
                } else if (p.this.h.isFocused()) {
                    if (v.a(p.this.f, p.this.g)) {
                        return;
                    }
                    if (!p.this.g.getText().toString().equals("4") || !p.this.f.getText().toString().equals("1")) {
                        if (!p.this.g.getText().toString().equals("7") || !p.this.f.getText().toString().equals("4")) {
                            if (p.this.g.getText().toString().equals("3")) {
                            }
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (p.this.i.isFocused()) {
                    if (v.a(p.this.f, p.this.g, p.this.h)) {
                        return;
                    }
                    if (((p.this.f.getText().toString().equals("1") && p.this.g.getText().toString().equals("4") && p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f.getText().toString().equals("4") && p.this.g.getText().toString().equals("7") && p.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (p.this.j.isFocused()) {
                    if (v.a(p.this.f, p.this.g, p.this.h, p.this.i)) {
                        return;
                    }
                    if (((p.this.f.getText().toString().equals("1") && p.this.g.getText().toString().equals("4") && p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (p.this.f.getText().toString().equals("4") && p.this.g.getText().toString().equals("7") && p.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (p.this.k.isFocused()) {
                    if (v.a(p.this.f, p.this.g, p.this.h, p.this.i, p.this.j)) {
                        return;
                    }
                    if ((!p.this.f.getText().toString().equals("1") || !p.this.g.getText().toString().equals("4") || !p.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!p.this.f.getText().toString().equals("4") || !p.this.g.getText().toString().equals("7") || !p.this.h.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (p.this.f.isFocused()) {
                    p.this.f.setText(p.a[i]);
                } else if (p.this.g.isFocused()) {
                    p.this.g.setText(p.a[i]);
                } else if (p.this.h.isFocused()) {
                    p.this.h.setText(p.a[i]);
                } else if (p.this.i.isFocused()) {
                    p.this.i.setText(p.a[i]);
                } else if (p.this.j.isFocused()) {
                    p.this.j.setText(p.a[i]);
                } else if (p.this.k.isFocused() && p.this.k.getText().length() == 0) {
                    p.this.k.setText(p.a[i]);
                }
            }
        }
    }

    /* compiled from: InsertChannelDialog400To470 */
    public interface c {
        void a(String str);

        void b(String str);
    }

    public p(Activity activity, String str, int i2) {
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
        setContentView(R.layout.dialog_custom_channel_400_470);
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
                textView.setText(R.string.receive_frequency);
                break;
            case 2:
                textView.setText(R.string.emission_frequency);
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
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
        this.g.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText2 has Focus");
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
        this.h.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText3 has Focus");
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
        this.i.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText4 has Focus");
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
        this.j.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText5 has Focus");
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
        this.k.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText6 has Focus");
                    p.this.m.notifyDataSetChanged();
                }
            }
        });
    }

    public void show() {
        super.show();
        if (!TextUtils.isEmpty(this.n)) {
            String replace = this.n.replace(".", "");
            if (replace.length() == 7) {
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
