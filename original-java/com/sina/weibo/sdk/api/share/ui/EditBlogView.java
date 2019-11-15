package com.sina.weibo.sdk.api.share.ui;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.List;

public class EditBlogView extends EditText {
    private Context a;
    private List<b> b;
    private a c;
    private boolean d = true;

    public interface a {
        void a();
    }

    public interface b {
        void a(int i, int i2);
    }

    public EditBlogView(Context context) {
        super(context);
        a();
    }

    public EditBlogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public EditBlogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.a = getContext();
        this.b = new ArrayList();
    }

    public void setOnSelectionListener(b bVar) {
        this.b.add(bVar);
    }

    /* access modifiers changed from: protected */
    public void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        if (this.d && this.b != null && !this.b.isEmpty()) {
            for (b a2 : this.b) {
                a2.a(i, i2);
            }
        }
    }

    public void setOnEnterListener(a aVar) {
        this.c = aVar;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 66 && this.c != null) {
            this.c.a();
        }
        return super.onKeyDown(i, keyEvent);
    }

    public int a(int i) {
        if (i == -1) {
            return i;
        }
        Editable text = getText();
        if (i >= text.length()) {
            return i;
        }
        Object[] spans = text.getSpans(i, i, ImageSpan.class);
        if (spans == null || spans.length == 0 || i == text.getSpanStart(spans[0])) {
            return i;
        }
        return text.getSpanEnd(spans[0]);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new InputConnectionWrapper(super.onCreateInputConnection(editorInfo), false) {
            public boolean commitText(CharSequence charSequence, int i) {
                Editable editableText = EditBlogView.this.getEditableText();
                new String(editableText.toString());
                int selectionStart = Selection.getSelectionStart(editableText);
                int selectionEnd = Selection.getSelectionEnd(editableText);
                if (!(selectionStart == -1 || selectionEnd == -1)) {
                    int a2 = EditBlogView.this.a(selectionStart);
                    int a3 = EditBlogView.this.a(selectionEnd);
                    if (a2 <= a3) {
                        int i2 = a3;
                        a3 = a2;
                        a2 = i2;
                    }
                    if (!(a3 == selectionStart && a2 == selectionEnd)) {
                        Selection.setSelection(editableText, a3, a2);
                    }
                    if (a3 != a2) {
                        EditBlogView.this.getText().delete(a3, a2);
                    }
                }
                return super.commitText(charSequence, i);
            }

            public boolean setComposingText(CharSequence charSequence, int i) {
                Editable editableText = EditBlogView.this.getEditableText();
                new String(editableText.toString());
                int selectionStart = Selection.getSelectionStart(editableText);
                int selectionEnd = Selection.getSelectionEnd(editableText);
                if (!(selectionStart == -1 || selectionEnd == -1)) {
                    int a2 = EditBlogView.this.a(selectionStart);
                    int a3 = EditBlogView.this.a(selectionEnd);
                    if (a2 <= a3) {
                        int i2 = a3;
                        a3 = a2;
                        a2 = i2;
                    }
                    if (!(a3 == selectionStart && a2 == selectionEnd)) {
                        Selection.setSelection(editableText, a3, a2);
                    }
                    if (a3 != a2) {
                        EditBlogView.this.getText().delete(a3, a2);
                    }
                }
                return super.setComposingText(charSequence, i);
            }
        };
    }
}
