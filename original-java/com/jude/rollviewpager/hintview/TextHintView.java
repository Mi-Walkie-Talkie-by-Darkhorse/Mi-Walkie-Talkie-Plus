package com.jude.rollviewpager.hintview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.jude.rollviewpager.a;

public class TextHintView extends TextView implements a {
    private int a;

    public TextHintView(Context context) {
        super(context);
    }

    public TextHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(int i, int i2) {
        this.a = i;
        setTextColor(-1);
        switch (i2) {
            case 0:
                setGravity(19);
                break;
            case 1:
                setGravity(17);
                break;
            case 2:
                setGravity(21);
                break;
        }
        setCurrent(0);
    }

    public void setCurrent(int i) {
        setText((i + 1) + "/" + this.a);
    }
}
