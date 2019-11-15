package pl.droidsonroids.gif;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.widget.ImageView;

public class GifImageView extends ImageView {
    private boolean a;

    public GifImageView(Context context) {
        super(context);
    }

    public GifImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(e.a((ImageView) this, attributeSet, 0, 0));
    }

    public GifImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(e.a((ImageView) this, attributeSet, i, 0));
    }

    @RequiresApi(21)
    public GifImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(e.a((ImageView) this, attributeSet, i, i2));
    }

    private void a(a aVar) {
        this.a = aVar.c;
        if (aVar.a > 0) {
            super.setImageResource(aVar.a);
        }
        if (aVar.b > 0) {
            super.setBackgroundResource(aVar.b);
        }
    }

    public void setImageURI(Uri uri) {
        if (!e.a((ImageView) this, uri)) {
            super.setImageURI(uri);
        }
    }

    public void setImageResource(int i) {
        if (!e.a((ImageView) this, true, i)) {
            super.setImageResource(i);
        }
    }

    public void setBackgroundResource(int i) {
        if (!e.a((ImageView) this, false, i)) {
            super.setBackgroundResource(i);
        }
    }

    public Parcelable onSaveInstanceState() {
        Drawable drawable;
        Drawable drawable2 = null;
        if (this.a) {
            drawable = getDrawable();
        } else {
            drawable = null;
        }
        if (this.a) {
            drawable2 = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawable, drawable2);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        gifViewSavedState.a(getDrawable(), 0);
        gifViewSavedState.a(getBackground(), 1);
    }

    public void setFreezesAnimation(boolean z) {
        this.a = z;
    }
}
