package android.support.v4.graphics.drawable;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

@TargetApi(19)
@RequiresApi(19)
class DrawableWrapperKitKat extends DrawableWrapperHoneycomb {

    private static class DrawableWrapperStateKitKat extends DrawableWrapperState {
        DrawableWrapperStateKitKat(@Nullable DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            super(drawableWrapperState, resources);
        }

        public Drawable newDrawable(@Nullable Resources resources) {
            return new DrawableWrapperKitKat(this, resources);
        }
    }

    DrawableWrapperKitKat(Drawable drawable) {
        super(drawable);
    }

    DrawableWrapperKitKat(DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
    }

    public void setAutoMirrored(boolean z) {
        this.mDrawable.setAutoMirrored(z);
    }

    public boolean isAutoMirrored() {
        return this.mDrawable.isAutoMirrored();
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateKitKat(this.mState, null);
    }
}
