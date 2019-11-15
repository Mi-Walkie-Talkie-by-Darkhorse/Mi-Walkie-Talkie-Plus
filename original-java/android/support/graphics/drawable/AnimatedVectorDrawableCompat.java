package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ArrayMap;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@SuppressLint({"NewApi"})
public class AnimatedVectorDrawableCompat extends e implements b {
    final Callback a;
    private a c;
    private Context d;
    private ArgbEvaluator e;
    private AnimatorListener f;
    private ArrayList<Object> g;

    private static class a extends ConstantState {
        int a;
        VectorDrawableCompat b;
        AnimatorSet c;
        ArrayMap<Animator, String> d;
        /* access modifiers changed from: private */
        public ArrayList<Animator> e;

        public a(Context context, a aVar, Callback callback, Resources resources) {
            if (aVar != null) {
                this.a = aVar.a;
                if (aVar.b != null) {
                    ConstantState constantState = aVar.b.getConstantState();
                    if (resources != null) {
                        this.b = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.b = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    this.b = (VectorDrawableCompat) this.b.mutate();
                    this.b.setCallback(callback);
                    this.b.setBounds(aVar.b.getBounds());
                    this.b.a(false);
                }
                if (aVar.e != null) {
                    int size = aVar.e.size();
                    this.e = new ArrayList<>(size);
                    this.d = new ArrayMap<>(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = (Animator) aVar.e.get(i);
                        Animator clone = animator.clone();
                        String str = (String) aVar.d.get(animator);
                        clone.setTarget(this.b.a(str));
                        this.e.add(clone);
                        this.d.put(clone, str);
                    }
                    a();
                }
            }
        }

        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public int getChangingConfigurations() {
            return this.a;
        }

        public void a() {
            if (this.c == null) {
                this.c = new AnimatorSet();
            }
            this.c.playTogether(this.e);
        }
    }

    private static class b extends ConstantState {
        private final ConstantState a;

        public b(ConstantState constantState) {
            this.a = constantState;
        }

        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.b = this.a.newDrawable();
            animatedVectorDrawableCompat.b.setCallback(animatedVectorDrawableCompat.a);
            return animatedVectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.b = this.a.newDrawable(resources);
            animatedVectorDrawableCompat.b.setCallback(animatedVectorDrawableCompat.a);
            return animatedVectorDrawableCompat;
        }

        public Drawable newDrawable(Resources resources, Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            animatedVectorDrawableCompat.b = this.a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.b.setCallback(animatedVectorDrawableCompat.a);
            return animatedVectorDrawableCompat;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }
    }

    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public /* bridge */ /* synthetic */ ColorFilter getColorFilter() {
        return super.getColorFilter();
    }

    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    public /* bridge */ /* synthetic */ void setColorFilter(int i, Mode mode) {
        super.setColorFilter(i, mode);
    }

    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    public /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    AnimatedVectorDrawableCompat() {
        this(null, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context) {
        this(context, null, null);
    }

    private AnimatedVectorDrawableCompat(@Nullable Context context, @Nullable a aVar, @Nullable Resources resources) {
        this.e = null;
        this.f = null;
        this.g = null;
        this.a = new Callback() {
            public void invalidateDrawable(Drawable drawable) {
                AnimatedVectorDrawableCompat.this.invalidateSelf();
            }

            public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j);
            }

            public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
            }
        };
        this.d = context;
        if (aVar != null) {
            this.c = aVar;
        } else {
            this.c = new a(context, aVar, this.a, resources);
        }
    }

    public Drawable mutate() {
        if (this.b != null) {
            this.b.mutate();
        }
        return this;
    }

    public static AnimatedVectorDrawableCompat a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        animatedVectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return animatedVectorDrawableCompat;
    }

    public ConstantState getConstantState() {
        if (this.b != null) {
            return new b(this.b.getConstantState());
        }
        return null;
    }

    public int getChangingConfigurations() {
        if (this.b != null) {
            return this.b.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.c.a;
    }

    public void draw(Canvas canvas) {
        if (this.b != null) {
            this.b.draw(canvas);
            return;
        }
        this.c.b.draw(canvas);
        if (this.c.c.isStarted()) {
            invalidateSelf();
        }
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        if (this.b != null) {
            this.b.setBounds(rect);
        } else {
            this.c.b.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        if (this.b != null) {
            return this.b.setState(iArr);
        }
        return this.c.b.setState(iArr);
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        if (this.b != null) {
            return this.b.setLevel(i);
        }
        return this.c.b.setLevel(i);
    }

    public int getAlpha() {
        if (this.b != null) {
            return DrawableCompat.getAlpha(this.b);
        }
        return this.c.b.getAlpha();
    }

    public void setAlpha(int i) {
        if (this.b != null) {
            this.b.setAlpha(i);
        } else {
            this.c.b.setAlpha(i);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.b != null) {
            this.b.setColorFilter(colorFilter);
        } else {
            this.c.b.setColorFilter(colorFilter);
        }
    }

    public void setTint(int i) {
        if (this.b != null) {
            DrawableCompat.setTint(this.b, i);
        } else {
            this.c.b.setTint(i);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        if (this.b != null) {
            DrawableCompat.setTintList(this.b, colorStateList);
        } else {
            this.c.b.setTintList(colorStateList);
        }
    }

    public void setTintMode(Mode mode) {
        if (this.b != null) {
            DrawableCompat.setTintMode(this.b, mode);
        } else {
            this.c.b.setTintMode(mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        if (this.b != null) {
            return this.b.setVisible(z, z2);
        }
        this.c.b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    public boolean isStateful() {
        if (this.b != null) {
            return this.b.isStateful();
        }
        return this.c.b.isStateful();
    }

    public int getOpacity() {
        if (this.b != null) {
            return this.b.getOpacity();
        }
        return this.c.b.getOpacity();
    }

    public int getIntrinsicWidth() {
        if (this.b != null) {
            return this.b.getIntrinsicWidth();
        }
        return this.c.b.getIntrinsicWidth();
    }

    public int getIntrinsicHeight() {
        if (this.b != null) {
            return this.b.getIntrinsicHeight();
        }
        return this.c.b.getIntrinsicHeight();
    }

    public boolean isAutoMirrored() {
        if (this.b != null) {
            return DrawableCompat.isAutoMirrored(this.b);
        }
        return this.c.b.isAutoMirrored();
    }

    public void setAutoMirrored(boolean z) {
        if (this.b != null) {
            this.b.setAutoMirrored(z);
        } else {
            this.c.b.setAutoMirrored(z);
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Theme theme) throws XmlPullParserException, IOException {
        if (this.b != null) {
            DrawableCompat.inflate(this.b, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray a2 = e.a(resources, theme, attributeSet, a.e);
                    int resourceId = a2.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawableCompat a3 = VectorDrawableCompat.a(resources, resourceId, theme);
                        a3.a(false);
                        a3.setCallback(this.a);
                        if (this.c.b != null) {
                            this.c.b.setCallback(null);
                        }
                        this.c.b = a3;
                    }
                    a2.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, a.f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        if (this.d != null) {
                            a(string, AnimatorInflater.loadAnimator(this.d, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.c.a();
    }

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    public void applyTheme(Theme theme) {
        if (this.b != null) {
            DrawableCompat.applyTheme(this.b, theme);
        }
    }

    public boolean canApplyTheme() {
        if (this.b != null) {
            return DrawableCompat.canApplyTheme(this.b);
        }
        return false;
    }

    private void a(Animator animator) {
        if (animator instanceof AnimatorSet) {
            ArrayList childAnimations = ((AnimatorSet) animator).getChildAnimations();
            if (childAnimations != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= childAnimations.size()) {
                        break;
                    }
                    a((Animator) childAnimations.get(i2));
                    i = i2 + 1;
                }
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.e == null) {
                    this.e = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.e);
            }
        }
    }

    private void a(String str, Animator animator) {
        animator.setTarget(this.c.b.a(str));
        if (VERSION.SDK_INT < 21) {
            a(animator);
        }
        if (this.c.e == null) {
            this.c.e = new ArrayList();
            this.c.d = new ArrayMap<>();
        }
        this.c.e.add(animator);
        this.c.d.put(animator, str);
    }

    public boolean isRunning() {
        if (this.b != null) {
            return ((AnimatedVectorDrawable) this.b).isRunning();
        }
        return this.c.c.isRunning();
    }

    public void start() {
        if (this.b != null) {
            ((AnimatedVectorDrawable) this.b).start();
        } else if (!this.c.c.isStarted()) {
            this.c.c.start();
            invalidateSelf();
        }
    }

    public void stop() {
        if (this.b != null) {
            ((AnimatedVectorDrawable) this.b).stop();
        } else {
            this.c.c.end();
        }
    }
}
