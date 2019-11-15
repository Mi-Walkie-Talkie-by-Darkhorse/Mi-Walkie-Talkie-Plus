package com.ifengyu.intercom.ui.setting.shark;

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

/* compiled from: SharkInsertChannelDialog */
public class a extends com.ifengyu.intercom.ui.widget.dialog.b {
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
    public C0038a m;
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
                if (a.this.f.isFocused()) {
                    a.this.f.setFocusable(false);
                    a.this.f.setFocusableInTouchMode(false);
                    a.this.f.clearFocus();
                    a.this.g.setFocusable(true);
                    a.this.g.setFocusableInTouchMode(true);
                    a.this.g.requestFocus();
                } else if (a.this.g.isFocused()) {
                    a.this.g.setFocusable(false);
                    a.this.g.setFocusableInTouchMode(false);
                    a.this.g.clearFocus();
                    a.this.h.setFocusable(true);
                    a.this.h.setFocusableInTouchMode(true);
                    a.this.h.requestFocus();
                } else if (a.this.h.isFocused()) {
                    a.this.h.setFocusable(false);
                    a.this.h.setFocusableInTouchMode(false);
                    a.this.h.clearFocus();
                    a.this.i.setFocusable(true);
                    a.this.i.setFocusableInTouchMode(true);
                    a.this.i.requestFocus();
                } else if (a.this.i.isFocused()) {
                    a.this.i.setFocusable(false);
                    a.this.i.setFocusableInTouchMode(false);
                    a.this.i.clearFocus();
                    a.this.j.setFocusable(true);
                    a.this.j.setFocusableInTouchMode(true);
                    a.this.j.requestFocus();
                } else if (a.this.j.isFocused()) {
                    a.this.j.setFocusable(false);
                    a.this.j.setFocusableInTouchMode(false);
                    a.this.j.clearFocus();
                    a.this.k.setFocusable(true);
                    a.this.k.setFocusableInTouchMode(true);
                    a.this.k.requestFocus();
                } else if (a.this.k.isFocused()) {
                    a.this.k.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString()) || TextUtils.isEmpty(a.this.h.getText().toString()) || TextUtils.isEmpty(a.this.i.getText().toString()) || TextUtils.isEmpty(a.this.j.getText().toString()) || TextUtils.isEmpty(a.this.k.getText().toString())) {
                a.this.l.setText("");
                return;
            }
            a.this.l.setText(a.c[Integer.parseInt(a.this.k.getText().toString())]);
        }
    };

    /* renamed from: com.ifengyu.intercom.ui.setting.shark.a$a reason: collision with other inner class name */
    /* compiled from: SharkInsertChannelDialog */
    class C0038a extends BaseAdapter {
        C0038a() {
        }

        public int getCount() {
            if (a.a == null || a.a.length <= 0) {
                return 0;
            }
            return a.a.length;
        }

        public Object getItem(int i) {
            if (a.a == null || a.a.length <= 0) {
                return null;
            }
            return a.a[i];
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) a.this.p.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) a.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(a.a[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) a.this.p.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(ad.d(R.color.channel_settting_choose_number));
                textView2.setText(a.a[i]);
                if (a.this.f.isFocused()) {
                    if (i == 3 || i == 6) {
                        return textView2;
                    }
                    textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                    textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                    return textView2;
                } else if (a.this.g.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (a.this.f.getText().toString().equals("1")) {
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
                } else if (a.this.h.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (!a.this.g.getText().toString().equals("4") || !a.this.f.getText().toString().equals("1")) {
                        if (!a.this.g.getText().toString().equals("4") || !a.this.f.getText().toString().equals("4")) {
                            if (a.this.g.getText().toString().equals("3")) {
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
                } else if (a.this.i.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString()) || TextUtils.isEmpty(a.this.h.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!a.this.f.getText().toString().equals("1") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f.getText().toString().equals("4") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (a.this.j.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString()) || TextUtils.isEmpty(a.this.h.getText().toString()) || TextUtils.isEmpty(a.this.i.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if (((!a.this.f.getText().toString().equals("1") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f.getText().toString().equals("4") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals("0"))) || i == 10) {
                        return textView2;
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    }
                } else if (!a.this.k.isFocusable()) {
                    return textView2;
                } else {
                    if (TextUtils.isEmpty(a.this.f.getText().toString()) || TextUtils.isEmpty(a.this.g.getText().toString()) || TextUtils.isEmpty(a.this.h.getText().toString()) || TextUtils.isEmpty(a.this.i.getText().toString()) || TextUtils.isEmpty(a.this.j.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(ad.d(R.color.channel_settting_custom_number_disabled));
                        return textView2;
                    } else if ((!a.this.f.getText().toString().equals("1") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f.getText().toString().equals("4") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals("0"))) {
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

    /* compiled from: SharkInsertChannelDialog */
    class b implements OnItemClickListener {
        b() {
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (a.this.k.isFocused()) {
                    if (a.this.k.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(a.this.i.getText());
                        int selectionStart = Selection.getSelectionStart(a.this.i.getText());
                        int selectionStart2 = a.this.k.getSelectionStart();
                        if (selectionStart2 > 0) {
                            a.this.k.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            a.this.k.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        a.this.j.setText("");
                        a.this.k.clearFocus();
                        a.this.j.setFocusable(true);
                        a.this.j.setFocusableInTouchMode(true);
                        a.this.j.requestFocus();
                    }
                } else if (a.this.j.isFocused()) {
                    a.this.i.setText("");
                    a.this.j.clearFocus();
                    a.this.i.setFocusable(true);
                    a.this.i.setFocusableInTouchMode(true);
                    a.this.i.requestFocus();
                } else if (a.this.i.isFocused()) {
                    a.this.h.setText("");
                    a.this.i.clearFocus();
                    a.this.h.setFocusable(true);
                    a.this.h.setFocusableInTouchMode(true);
                    a.this.h.requestFocus();
                } else if (a.this.h.isFocused()) {
                    a.this.g.setText("");
                    a.this.h.clearFocus();
                    a.this.g.setFocusable(true);
                    a.this.g.setFocusableInTouchMode(true);
                    a.this.g.requestFocus();
                } else if (a.this.g.isFocused()) {
                    a.this.f.setText("");
                    a.this.g.clearFocus();
                    a.this.f.setFocusable(true);
                    a.this.f.setFocusableInTouchMode(true);
                    a.this.f.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = a.this.f.getText().toString();
                String obj2 = a.this.g.getText().toString();
                String obj3 = a.this.h.getText().toString();
                String obj4 = a.this.i.getText().toString();
                String obj5 = a.this.j.getText().toString();
                String obj6 = a.this.k.getText().toString();
                String obj7 = a.this.l.getText().toString();
                if (!v.a(a.this.f, a.this.g, a.this.h, a.this.i, a.this.j, a.this.k)) {
                    String sb2 = sb.append(obj).append(obj2).append(obj3).append(".").append(obj4).append(obj5).append(obj6).append(obj7).toString();
                    int a2 = v.a(sb2);
                    s.b("InsertChannelDialog", "freq:" + a2);
                    if ((a2 >= 144000000 && a2 <= 148000000) || (a2 >= 430000000 && a2 <= 440000000)) {
                        if (TextUtils.isEmpty(a.this.n)) {
                            if (a.this.e != null) {
                                a.this.e.a(sb2);
                            }
                        } else if (a.this.e != null) {
                            a.this.e.b(sb2);
                        }
                        a.this.dismiss();
                    }
                }
            } else {
                if (a.this.f.isFocused()) {
                    if (!(i == 3 || i == 6)) {
                        return;
                    }
                } else if (a.this.g.isFocused()) {
                    if (TextUtils.isEmpty(a.this.f.getText().toString())) {
                        return;
                    }
                    if (a.this.f.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (!(i == 8 || i == 3)) {
                        return;
                    }
                } else if (a.this.h.isFocused()) {
                    if (v.a(a.this.f, a.this.g)) {
                        return;
                    }
                    if (!a.this.g.getText().toString().equals("4") || !a.this.f.getText().toString().equals("1")) {
                        if (!a.this.g.getText().toString().equals("4") || !a.this.f.getText().toString().equals("4")) {
                            if (a.this.g.getText().toString().equals("3")) {
                            }
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (a.this.i.isFocused()) {
                    if (v.a(a.this.f, a.this.g, a.this.h)) {
                        return;
                    }
                    if (((a.this.f.getText().toString().equals("1") && a.this.g.getText().toString().equals("4") && a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f.getText().toString().equals("4") && a.this.g.getText().toString().equals("4") && a.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (a.this.j.isFocused()) {
                    if (v.a(a.this.f, a.this.g, a.this.h, a.this.i)) {
                        return;
                    }
                    if (((a.this.f.getText().toString().equals("1") && a.this.g.getText().toString().equals("4") && a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (a.this.f.getText().toString().equals("4") && a.this.g.getText().toString().equals("4") && a.this.h.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (a.this.k.isFocused()) {
                    if (v.a(a.this.f, a.this.g, a.this.h, a.this.i, a.this.j)) {
                        return;
                    }
                    if ((!a.this.f.getText().toString().equals("1") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!a.this.f.getText().toString().equals("4") || !a.this.g.getText().toString().equals("4") || !a.this.h.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (a.this.f.isFocused()) {
                    a.this.f.setText(a.a[i]);
                } else if (a.this.g.isFocused()) {
                    a.this.g.setText(a.a[i]);
                } else if (a.this.h.isFocused()) {
                    a.this.h.setText(a.a[i]);
                } else if (a.this.i.isFocused()) {
                    a.this.i.setText(a.a[i]);
                } else if (a.this.j.isFocused()) {
                    a.this.j.setText(a.a[i]);
                } else if (a.this.k.isFocused() && a.this.k.getText().length() == 0) {
                    a.this.k.setText(a.a[i]);
                }
            }
        }
    }

    /* compiled from: SharkInsertChannelDialog */
    public interface c {
        void a(String str);

        void b(String str);
    }

    public a(Activity activity, String str, int i2) {
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
        setContentView(R.layout.dialog_shark_input_custom_channel);
        a(this.d);
        a();
    }

    public void a() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        switch (this.o) {
            case 1:
                textView.setText(R.string.emission_frequency);
                break;
            case 2:
                textView.setText(R.string.receive_frequency);
                break;
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        this.m = new C0038a();
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
                    a.this.m.notifyDataSetChanged();
                }
            }
        });
        this.g.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText2 has Focus");
                    a.this.m.notifyDataSetChanged();
                }
            }
        });
        this.h.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText3 has Focus");
                    a.this.m.notifyDataSetChanged();
                }
            }
        });
        this.i.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText4 has Focus");
                    a.this.m.notifyDataSetChanged();
                }
            }
        });
        this.j.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText5 has Focus");
                    a.this.m.notifyDataSetChanged();
                }
            }
        });
        this.k.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    s.b("InsertChannelDialog", "EditText6 has Focus");
                    a.this.m.notifyDataSetChanged();
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
