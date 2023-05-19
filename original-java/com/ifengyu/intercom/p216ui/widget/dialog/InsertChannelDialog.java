package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.connect.common.Constants;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.m */
/* loaded from: classes2.dex */
public class InsertChannelDialog extends BaseDialog {

    /* renamed from: o */
    private static final String[] f15942o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};

    /* renamed from: p */
    private static final String[] f15943p = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a */
    private Activity f15944a;

    /* renamed from: b */
    private InterfaceC4913k f15945b;

    /* renamed from: c */
    private EditText f15946c;

    /* renamed from: d */
    private EditText f15947d;

    /* renamed from: e */
    private EditText f15948e;

    /* renamed from: f */
    private EditText f15949f;

    /* renamed from: g */
    private EditText f15950g;

    /* renamed from: h */
    private EditText f15951h;

    /* renamed from: i */
    private EditText f15952i;

    /* renamed from: j */
    private C4911i f15953j;

    /* renamed from: k */
    private String f15954k;

    /* renamed from: l */
    private int f15955l;

    /* renamed from: m */
    private LayoutInflater f15956m;

    /* renamed from: n */
    private TextWatcher f15957n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$a */
    /* loaded from: classes2.dex */
    public class ActionMode$CallbackC4903a implements ActionMode.Callback {
        ActionMode$CallbackC4903a(InsertChannelDialog insertChannelDialog) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$b */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4904b implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4904b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText1 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$c */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4905c implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4905c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText2 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$d */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4906d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4906d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText3 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$e */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4907e implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4907e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText4 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$f */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4908f implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4908f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText5 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$g */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4909g implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4909g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText6 has Focus");
                InsertChannelDialog.this.f15953j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$h */
    /* loaded from: classes2.dex */
    class C4910h implements TextWatcher {
        C4910h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C4161y.m11054a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (InsertChannelDialog.this.f15946c.isFocused()) {
                    InsertChannelDialog.this.f15946c.setFocusable(false);
                    InsertChannelDialog.this.f15946c.setFocusableInTouchMode(false);
                    InsertChannelDialog.this.f15946c.clearFocus();
                    InsertChannelDialog.this.f15947d.setFocusable(true);
                    InsertChannelDialog.this.f15947d.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15947d.requestFocus();
                } else if (InsertChannelDialog.this.f15947d.isFocused()) {
                    InsertChannelDialog.this.f15947d.setFocusable(false);
                    InsertChannelDialog.this.f15947d.setFocusableInTouchMode(false);
                    InsertChannelDialog.this.f15947d.clearFocus();
                    InsertChannelDialog.this.f15948e.setFocusable(true);
                    InsertChannelDialog.this.f15948e.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15948e.requestFocus();
                } else if (InsertChannelDialog.this.f15948e.isFocused()) {
                    InsertChannelDialog.this.f15948e.setFocusable(false);
                    InsertChannelDialog.this.f15948e.setFocusableInTouchMode(false);
                    InsertChannelDialog.this.f15948e.clearFocus();
                    InsertChannelDialog.this.f15949f.setFocusable(true);
                    InsertChannelDialog.this.f15949f.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15949f.requestFocus();
                } else if (InsertChannelDialog.this.f15949f.isFocused()) {
                    InsertChannelDialog.this.f15949f.setFocusable(false);
                    InsertChannelDialog.this.f15949f.setFocusableInTouchMode(false);
                    InsertChannelDialog.this.f15949f.clearFocus();
                    InsertChannelDialog.this.f15950g.setFocusable(true);
                    InsertChannelDialog.this.f15950g.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15950g.requestFocus();
                } else if (InsertChannelDialog.this.f15950g.isFocused()) {
                    InsertChannelDialog.this.f15950g.setFocusable(false);
                    InsertChannelDialog.this.f15950g.setFocusableInTouchMode(false);
                    InsertChannelDialog.this.f15950g.clearFocus();
                    InsertChannelDialog.this.f15951h.setFocusable(true);
                    InsertChannelDialog.this.f15951h.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15951h.requestFocus();
                } else if (InsertChannelDialog.this.f15951h.isFocused()) {
                    InsertChannelDialog.this.f15951h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog.this.f15947d.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog.this.f15948e.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog.this.f15949f.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog.this.f15950g.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog.this.f15951h.getText().toString())) {
                InsertChannelDialog.this.f15952i.setText("");
                return;
            }
            InsertChannelDialog.this.f15952i.setText(InsertChannelDialog.f15943p[Integer.parseInt(InsertChannelDialog.this.f15951h.getText().toString())]);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "beforeTextChanged:s:" + ((Object) charSequence) + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "onTextChanged:s:" + ((Object) charSequence) + " start:" + i + " before:" + i2 + " count:" + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$i */
    /* loaded from: classes2.dex */
    public class C4911i extends BaseAdapter {
        C4911i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (InsertChannelDialog.f15942o == null || InsertChannelDialog.f15942o.length <= 0) {
                return 0;
            }
            return InsertChannelDialog.f15942o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (InsertChannelDialog.f15942o == null || InsertChannelDialog.f15942o.length <= 0) {
                return null;
            }
            return InsertChannelDialog.f15942o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) InsertChannelDialog.this.f15956m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) InsertChannelDialog.this.f15956m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(InsertChannelDialog.f15942o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) InsertChannelDialog.this.f15956m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_choose_number));
                textView2.setText(InsertChannelDialog.f15942o[i]);
                if (InsertChannelDialog.this.f15946c.isFocused()) {
                    if (i != 3 && i != 6) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog.this.f15947d.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString())) {
                        if (InsertChannelDialog.this.f15946c.getText().toString().equals("1")) {
                            if (i != 3) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 8 && i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog.this.f15948e.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15947d.getText().toString())) {
                        if (InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15946c.getText().toString().equals("1")) {
                            if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (!InsertChannelDialog.this.f15947d.getText().toString().equals("4") || !InsertChannelDialog.this.f15946c.getText().toString().equals("4")) {
                            InsertChannelDialog.this.f15947d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog.this.f15949f.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15947d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15948e.getText().toString())) {
                        if (((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog.this.f15950g.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15947d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15948e.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15949f.getText().toString())) {
                        if (((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog.this.f15951h.isFocusable()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15947d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15948e.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15949f.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog.this.f15950g.getText().toString())) {
                        if ((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) {
                            if (i != 10) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                }
                return textView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$j */
    /* loaded from: classes2.dex */
    public class C4912j implements AdapterView.OnItemClickListener {
        C4912j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (InsertChannelDialog.this.f15951h.isFocused()) {
                    if (InsertChannelDialog.this.f15951h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(InsertChannelDialog.this.f15949f.getText());
                        int selectionStart = Selection.getSelectionStart(InsertChannelDialog.this.f15949f.getText());
                        int selectionStart2 = InsertChannelDialog.this.f15951h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            InsertChannelDialog.this.f15951h.getText().delete(selectionStart2 - 1, selectionStart2);
                            return;
                        } else if (selectionEnd - selectionStart > 0) {
                            InsertChannelDialog.this.f15951h.getText().delete(selectionStart, selectionEnd);
                            return;
                        } else {
                            return;
                        }
                    }
                    InsertChannelDialog.this.f15950g.setText("");
                    InsertChannelDialog.this.f15951h.clearFocus();
                    InsertChannelDialog.this.f15950g.setFocusable(true);
                    InsertChannelDialog.this.f15950g.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15950g.requestFocus();
                } else if (InsertChannelDialog.this.f15950g.isFocused()) {
                    InsertChannelDialog.this.f15949f.setText("");
                    InsertChannelDialog.this.f15950g.clearFocus();
                    InsertChannelDialog.this.f15949f.setFocusable(true);
                    InsertChannelDialog.this.f15949f.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15949f.requestFocus();
                } else if (InsertChannelDialog.this.f15949f.isFocused()) {
                    InsertChannelDialog.this.f15948e.setText("");
                    InsertChannelDialog.this.f15949f.clearFocus();
                    InsertChannelDialog.this.f15948e.setFocusable(true);
                    InsertChannelDialog.this.f15948e.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15948e.requestFocus();
                } else if (InsertChannelDialog.this.f15948e.isFocused()) {
                    InsertChannelDialog.this.f15947d.setText("");
                    InsertChannelDialog.this.f15948e.clearFocus();
                    InsertChannelDialog.this.f15947d.setFocusable(true);
                    InsertChannelDialog.this.f15947d.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15947d.requestFocus();
                } else if (InsertChannelDialog.this.f15947d.isFocused()) {
                    InsertChannelDialog.this.f15946c.setText("");
                    InsertChannelDialog.this.f15947d.clearFocus();
                    InsertChannelDialog.this.f15946c.setFocusable(true);
                    InsertChannelDialog.this.f15946c.setFocusableInTouchMode(true);
                    InsertChannelDialog.this.f15946c.requestFocus();
                }
            } else if (i != 11) {
                if (InsertChannelDialog.this.f15946c.isFocused()) {
                    if (i != 3 && i != 6) {
                        return;
                    }
                } else if (InsertChannelDialog.this.f15947d.isFocused()) {
                    if (TextUtils.isEmpty(InsertChannelDialog.this.f15946c.getText().toString())) {
                        return;
                    }
                    if (InsertChannelDialog.this.f15946c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i != 8 && i != 3) {
                        return;
                    }
                } else if (InsertChannelDialog.this.f15948e.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog.this.f15946c, InsertChannelDialog.this.f15947d)) {
                        return;
                    }
                    if (InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15946c.getText().toString().equals("1")) {
                        if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                            return;
                        }
                    } else if (!InsertChannelDialog.this.f15947d.getText().toString().equals("4") || !InsertChannelDialog.this.f15946c.getText().toString().equals("4")) {
                        InsertChannelDialog.this.f15947d.getText().toString().equals("3");
                    } else if (i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog.this.f15949f.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog.this.f15946c, InsertChannelDialog.this.f15947d, InsertChannelDialog.this.f15948e)) {
                        return;
                    }
                    if (((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog.this.f15950g.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog.this.f15946c, InsertChannelDialog.this.f15947d, InsertChannelDialog.this.f15948e, InsertChannelDialog.this.f15949f)) {
                        return;
                    }
                    if (((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog.this.f15951h.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog.this.f15946c, InsertChannelDialog.this.f15947d, InsertChannelDialog.this.f15948e, InsertChannelDialog.this.f15949f, InsertChannelDialog.this.f15950g)) {
                        return;
                    }
                    if ((InsertChannelDialog.this.f15946c.getText().toString().equals("1") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog.this.f15946c.getText().toString().equals("4") && InsertChannelDialog.this.f15947d.getText().toString().equals("4") && InsertChannelDialog.this.f15948e.getText().toString().equals("0"))) {
                        if (i != 10) {
                            return;
                        }
                    } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                        return;
                    }
                }
                if (InsertChannelDialog.this.f15946c.isFocused()) {
                    InsertChannelDialog.this.f15946c.setText(InsertChannelDialog.f15942o[i]);
                } else if (InsertChannelDialog.this.f15947d.isFocused()) {
                    InsertChannelDialog.this.f15947d.setText(InsertChannelDialog.f15942o[i]);
                } else if (InsertChannelDialog.this.f15948e.isFocused()) {
                    InsertChannelDialog.this.f15948e.setText(InsertChannelDialog.f15942o[i]);
                } else if (InsertChannelDialog.this.f15949f.isFocused()) {
                    InsertChannelDialog.this.f15949f.setText(InsertChannelDialog.f15942o[i]);
                } else if (InsertChannelDialog.this.f15950g.isFocused()) {
                    InsertChannelDialog.this.f15950g.setText(InsertChannelDialog.f15942o[i]);
                } else if (InsertChannelDialog.this.f15951h.isFocused() && InsertChannelDialog.this.f15951h.getText().length() == 0) {
                    InsertChannelDialog.this.f15951h.setText(InsertChannelDialog.f15942o[i]);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                String obj = InsertChannelDialog.this.f15946c.getText().toString();
                String obj2 = InsertChannelDialog.this.f15947d.getText().toString();
                String obj3 = InsertChannelDialog.this.f15948e.getText().toString();
                String obj4 = InsertChannelDialog.this.f15949f.getText().toString();
                String obj5 = InsertChannelDialog.this.f15950g.getText().toString();
                String obj6 = InsertChannelDialog.this.f15951h.getText().toString();
                String obj7 = InsertChannelDialog.this.f15952i.getText().toString();
                if (MethodsUtils.m11278v(InsertChannelDialog.this.f15946c, InsertChannelDialog.this.f15947d, InsertChannelDialog.this.f15948e, InsertChannelDialog.this.f15949f, InsertChannelDialog.this.f15950g, InsertChannelDialog.this.f15951h)) {
                    return;
                }
                sb.append(obj);
                sb.append(obj2);
                sb.append(obj3);
                sb.append(".");
                sb.append(obj4);
                sb.append(obj5);
                sb.append(obj6);
                sb.append(obj7);
                String sb2 = sb.toString();
                int m11291i = MethodsUtils.m11291i(sb2);
                C4161y.m11054a("InsertChannelDialog", "freq:" + m11291i);
                if ((m11291i < 144000000 || m11291i > 148000000) && (m11291i < 430000000 || m11291i > 440000000)) {
                    return;
                }
                if (TextUtils.isEmpty(InsertChannelDialog.this.f15954k)) {
                    if (InsertChannelDialog.this.f15945b != null) {
                        InsertChannelDialog.this.f15945b.mo8958b(sb2);
                    }
                } else if (InsertChannelDialog.this.f15945b != null) {
                    InsertChannelDialog.this.f15945b.mo8959a(sb2);
                }
                InsertChannelDialog.this.dismiss();
            }
        }
    }

    /* compiled from: InsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.m$k */
    /* loaded from: classes2.dex */
    public interface InterfaceC4913k {
        /* renamed from: a */
        void mo8959a(String str);

        /* renamed from: b */
        void mo8958b(String str);
    }

    public InsertChannelDialog(Activity activity, String str, int i) {
        super(activity);
        this.f15957n = new C4910h();
        this.f15944a = activity;
        this.f15956m = LayoutInflater.from(activity);
        this.f15954k = str;
        this.f15955l = i;
        String[] strArr = f15942o;
        strArr[strArr.length - 1] = this.f15944a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        super.mo8735d(i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_custom_channel);
        m9037g(this.f15944a);
        m8961u();
    }

    @Override // android.app.Dialog
    public void show() {
        int m11291i;
        super.show();
        if (!TextUtils.isEmpty(this.f15954k)) {
            String replace = this.f15954k.replace(".", "");
            String str = this.f15954k;
            if (str != null && (((m11291i = MethodsUtils.m11291i(str)) < 430000000 && m11291i >= 400000000) || (m11291i > 440000000 && m11291i <= 470000000))) {
                replace = null;
            }
            if (replace != null && replace.length() == 7) {
                char[] charArray = replace.toCharArray();
                this.f15946c.setText(String.valueOf(charArray[0]));
                this.f15947d.setText(String.valueOf(charArray[1]));
                this.f15948e.setText(String.valueOf(charArray[2]));
                this.f15949f.setText(String.valueOf(charArray[3]));
                this.f15950g.setText(String.valueOf(charArray[4]));
                this.f15951h.setText(String.valueOf(charArray[5]));
                this.f15952i.setText(String.valueOf(charArray[6]));
                this.f15951h.setFocusable(true);
                this.f15951h.setFocusableInTouchMode(true);
                this.f15951h.requestFocus();
                this.f15951h.setSelection(1);
            } else {
                this.f15946c.setFocusable(true);
                this.f15946c.setFocusableInTouchMode(true);
                this.f15946c.requestFocus();
            }
        } else {
            this.f15946c.setFocusable(true);
            this.f15946c.setFocusableInTouchMode(true);
            this.f15946c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    /* renamed from: u */
    public void m8961u() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i = this.f15955l;
        if (i == 0) {
            textView.setText(R.string.channel_custom);
        } else if (i == 1) {
            textView.setText(R.string.emission_frequency);
        } else if (i == 2) {
            textView.setText(R.string.receive_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        C4911i c4911i = new C4911i();
        this.f15953j = c4911i;
        gridView.setAdapter((ListAdapter) c4911i);
        gridView.setOnItemClickListener(new C4912j());
        this.f15946c = (EditText) findViewById(R.id.et_input_num_1);
        this.f15947d = (EditText) findViewById(R.id.et_input_num_2);
        this.f15948e = (EditText) findViewById(R.id.et_input_num_3);
        this.f15949f = (EditText) findViewById(R.id.et_input_num_4);
        this.f15950g = (EditText) findViewById(R.id.et_input_num_5);
        this.f15951h = (EditText) findViewById(R.id.et_input_num_6);
        this.f15952i = (EditText) findViewById(R.id.et_input_num_7);
        this.f15946c.setTextIsSelectable(true);
        this.f15947d.setTextIsSelectable(true);
        this.f15948e.setTextIsSelectable(true);
        this.f15949f.setTextIsSelectable(true);
        this.f15950g.setTextIsSelectable(true);
        this.f15951h.setTextIsSelectable(true);
        this.f15946c.setOnLongClickListener(null);
        this.f15947d.setOnClickListener(null);
        this.f15946c.setFocusable(false);
        this.f15946c.setFocusableInTouchMode(false);
        this.f15947d.setFocusable(false);
        this.f15947d.setFocusableInTouchMode(false);
        this.f15948e.setFocusable(false);
        this.f15948e.setFocusableInTouchMode(false);
        this.f15949f.setFocusable(false);
        this.f15949f.setFocusableInTouchMode(false);
        this.f15950g.setFocusable(false);
        this.f15950g.setFocusableInTouchMode(false);
        this.f15951h.setFocusable(false);
        this.f15951h.setFocusableInTouchMode(false);
        this.f15952i.setFocusable(false);
        this.f15952i.setFocusableInTouchMode(false);
        this.f15952i.setKeyListener(null);
        this.f15946c.addTextChangedListener(this.f15957n);
        this.f15947d.addTextChangedListener(this.f15957n);
        this.f15948e.addTextChangedListener(this.f15957n);
        this.f15949f.addTextChangedListener(this.f15957n);
        this.f15950g.addTextChangedListener(this.f15957n);
        this.f15951h.addTextChangedListener(this.f15957n);
        this.f15950g.setCustomSelectionActionModeCallback(new ActionMode$CallbackC4903a(this));
        this.f15946c.setOnFocusChangeListener(new View$OnFocusChangeListenerC4904b());
        this.f15947d.setOnFocusChangeListener(new View$OnFocusChangeListenerC4905c());
        this.f15948e.setOnFocusChangeListener(new View$OnFocusChangeListenerC4906d());
        this.f15949f.setOnFocusChangeListener(new View$OnFocusChangeListenerC4907e());
        this.f15950g.setOnFocusChangeListener(new View$OnFocusChangeListenerC4908f());
        this.f15951h.setOnFocusChangeListener(new View$OnFocusChangeListenerC4909g());
    }

    /* renamed from: v */
    public void m8960v(InterfaceC4913k interfaceC4913k) {
        this.f15945b = interfaceC4913k;
    }
}
