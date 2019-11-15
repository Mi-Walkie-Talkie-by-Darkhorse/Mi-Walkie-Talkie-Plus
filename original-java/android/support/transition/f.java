package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.RequiresApi;
import android.support.transition.y.b;
import android.support.transition.y.c;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: ChangeBoundsPort */
class f extends y {
    private static final String[] w = {"android:changeBounds:bounds", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static k x = new k();
    int[] a = new int[2];
    boolean b = false;
    boolean c = false;

    f() {
    }

    public String[] a() {
        return w;
    }

    private void c(ae aeVar) {
        View view = aeVar.b;
        aeVar.a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        aeVar.a.put("android:changeBounds:parent", aeVar.b.getParent());
        aeVar.b.getLocationInWindow(this.a);
        aeVar.a.put("android:changeBounds:windowX", Integer.valueOf(this.a[0]));
        aeVar.a.put("android:changeBounds:windowY", Integer.valueOf(this.a[1]));
    }

    public void a(ae aeVar) {
        c(aeVar);
    }

    public void b(ae aeVar) {
        c(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        int i;
        int i2;
        int i3;
        int i4;
        if (aeVar == null || aeVar2 == null) {
            return null;
        }
        ViewGroup viewGroup2 = (ViewGroup) aeVar.a.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) aeVar2.a.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view = aeVar2.b;
        boolean z = viewGroup2 == viewGroup3 || viewGroup2.getId() == viewGroup3.getId();
        if (!this.c || z) {
            Rect rect = (Rect) aeVar.a.get("android:changeBounds:bounds");
            Rect rect2 = (Rect) aeVar2.a.get("android:changeBounds:bounds");
            int i5 = rect.left;
            int i6 = rect2.left;
            int i7 = rect.top;
            int i8 = rect2.top;
            int i9 = rect.right;
            int i10 = rect2.right;
            int i11 = rect.bottom;
            int i12 = rect2.bottom;
            int i13 = i9 - i5;
            int i14 = i11 - i7;
            int i15 = i10 - i6;
            int i16 = i12 - i8;
            int i17 = 0;
            if (!(i13 == 0 || i14 == 0 || i15 == 0 || i16 == 0)) {
                if (i5 != i6) {
                    i17 = 1;
                }
                if (i7 != i8) {
                    i17++;
                }
                if (i9 != i10) {
                    i17++;
                }
                if (i11 != i12) {
                    i17++;
                }
            }
            if (i17 > 0) {
                if (!this.b) {
                    PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[i17];
                    if (i5 != i6) {
                        view.setLeft(i5);
                    }
                    if (i7 != i8) {
                        view.setTop(i7);
                    }
                    if (i9 != i10) {
                        view.setRight(i9);
                    }
                    if (i11 != i12) {
                        view.setBottom(i11);
                    }
                    if (i5 != i6) {
                        i2 = 1;
                        propertyValuesHolderArr[0] = PropertyValuesHolder.ofInt("left", new int[]{i5, i6});
                    } else {
                        i2 = 0;
                    }
                    if (i7 != i8) {
                        i3 = i2 + 1;
                        propertyValuesHolderArr[i2] = PropertyValuesHolder.ofInt("top", new int[]{i7, i8});
                    } else {
                        i3 = i2;
                    }
                    if (i9 != i10) {
                        i4 = i3 + 1;
                        propertyValuesHolderArr[i3] = PropertyValuesHolder.ofInt("right", new int[]{i9, i10});
                    } else {
                        i4 = i3;
                    }
                    if (i11 != i12) {
                        int i18 = i4 + 1;
                        propertyValuesHolderArr[i4] = PropertyValuesHolder.ofInt("bottom", new int[]{i11, i12});
                    }
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr);
                    if (view.getParent() instanceof ViewGroup) {
                        ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                        a((b) new c() {
                            boolean a = false;

                            public void a(y yVar) {
                                if (!this.a) {
                                }
                            }

                            public void b(y yVar) {
                            }

                            public void c(y yVar) {
                            }
                        });
                    }
                    return ofPropertyValuesHolder;
                }
                if (i13 != i15) {
                    view.setRight(Math.max(i13, i15) + i6);
                }
                if (i14 != i16) {
                    view.setBottom(Math.max(i14, i16) + i8);
                }
                if (i5 != i6) {
                    view.setTranslationX((float) (i5 - i6));
                }
                if (i7 != i8) {
                    view.setTranslationY((float) (i7 - i8));
                }
                float f = (float) (i6 - i5);
                float f2 = (float) (i8 - i7);
                int i19 = i15 - i13;
                int i20 = i16 - i14;
                int i21 = 0;
                if (f != 0.0f) {
                    i21 = 1;
                }
                if (f2 != 0.0f) {
                    i21++;
                }
                if (!(i19 == 0 && i20 == 0)) {
                    i21++;
                }
                PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[i21];
                if (f != 0.0f) {
                    i = 1;
                    propertyValuesHolderArr2[0] = PropertyValuesHolder.ofFloat("translationX", new float[]{view.getTranslationX(), 0.0f});
                } else {
                    i = 0;
                }
                if (f2 != 0.0f) {
                    int i22 = i + 1;
                    propertyValuesHolderArr2[i] = PropertyValuesHolder.ofFloat("translationY", new float[]{view.getTranslationY(), 0.0f});
                }
                if (!(i19 == 0 && i20 == 0)) {
                    new Rect(0, 0, i13, i14);
                    new Rect(0, 0, i15, i16);
                }
                ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr2);
                if (view.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup5 = (ViewGroup) view.getParent();
                    a((b) new c() {
                        boolean a = false;

                        public void a(y yVar) {
                            if (!this.a) {
                            }
                        }

                        public void b(y yVar) {
                        }

                        public void c(y yVar) {
                        }
                    });
                }
                ofPropertyValuesHolder2.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationEnd(Animator animator) {
                    }
                });
                return ofPropertyValuesHolder2;
            }
        } else {
            int intValue = ((Integer) aeVar.a.get("android:changeBounds:windowX")).intValue();
            int intValue2 = ((Integer) aeVar.a.get("android:changeBounds:windowY")).intValue();
            int intValue3 = ((Integer) aeVar2.a.get("android:changeBounds:windowX")).intValue();
            int intValue4 = ((Integer) aeVar2.a.get("android:changeBounds:windowY")).intValue();
            if (!(intValue == intValue3 && intValue2 == intValue4)) {
                viewGroup.getLocationInWindow(this.a);
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.ARGB_8888);
                view.draw(new Canvas(createBitmap));
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
                view.setVisibility(4);
                ah.d(viewGroup).a(bitmapDrawable);
                ObjectAnimator ofObject = ObjectAnimator.ofObject(bitmapDrawable, "bounds", x, new Object[]{new Rect(intValue - this.a[0], intValue2 - this.a[1], (intValue - this.a[0]) + view.getWidth(), (intValue2 - this.a[1]) + view.getHeight()), new Rect(intValue3 - this.a[0], intValue4 - this.a[1], (intValue3 - this.a[0]) + view.getWidth(), (intValue4 - this.a[1]) + view.getHeight())});
                final ViewGroup viewGroup6 = viewGroup;
                ofObject.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationEnd(Animator animator) {
                        ah.d(viewGroup6).b(bitmapDrawable);
                        view.setVisibility(0);
                    }
                });
                return ofObject;
            }
        }
        return null;
    }
}
