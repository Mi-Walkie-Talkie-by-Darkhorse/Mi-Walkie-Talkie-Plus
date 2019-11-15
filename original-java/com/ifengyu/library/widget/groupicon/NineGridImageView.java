package com.ifengyu.library.widget.groupicon;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.ifengyu.library.R;
import java.util.ArrayList;
import java.util.List;

public class NineGridImageView<T> extends ViewGroup {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private List<ImageView> g;
    private List<T> h;
    private a<T> i;

    public NineGridImageView(Context context) {
        this(context, null);
    }

    public NineGridImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = 9;
        this.g = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NineGridImageView);
        this.d = (int) obtainStyledAttributes.getDimension(R.styleable.NineGridImageView_imgGap, 8.0f);
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.e = c(i2);
        this.f = d(i3);
        setMeasuredDimension(this.e, this.f);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        a();
    }

    private void a() {
        if (this.h != null) {
            int size = this.h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImageView imageView = (ImageView) getChildAt(i2);
                if (this.i != null) {
                    this.i.onDisplayImage(getContext(), imageView, this.h.get(i2));
                }
                int i3 = i2 / this.b;
                int i4 = i2 % this.b;
                int i5 = (this.e - ((this.b + 1) * this.d)) / this.b;
                int i6 = (this.f + this.d) / 2;
                int i7 = (this.f - this.d) / 2;
                int i8 = (this.e + this.d) / 2;
                int i9 = (this.e - this.d) / 2;
                int i10 = (this.f - i5) / 2;
                int i11 = ((i4 + 1) * this.d) + (i5 * i4);
                int i12 = ((i3 + 1) * this.d) + (i5 * i3);
                int i13 = i11 + i5;
                int i14 = i12 + i5;
                if (size == 1) {
                    imageView.layout(i11, i12, i13, i14);
                } else if (size == 2) {
                    imageView.layout(i11, i10, i13, i10 + i5);
                } else if (size == 3) {
                    if (i2 == 0) {
                        imageView.layout(i10, i12, i10 + i5, i14);
                    } else {
                        imageView.layout((this.d * i2) + ((i2 - 1) * i5), i6, (this.d * i2) + (i5 * i2), i5 + i6);
                    }
                } else if (size == 4) {
                    imageView.layout(i11, i12, i13, i14);
                } else if (size == 5) {
                    if (i2 == 0) {
                        imageView.layout(i9 - i5, i9 - i5, i9, i9);
                    } else if (i2 == 1) {
                        imageView.layout(i8, i9 - i5, i8 + i5, i9);
                    } else {
                        imageView.layout((this.d * (i2 - 1)) + ((i2 - 2) * i5), i6, (this.d * (i2 - 1)) + ((i2 - 1) * i5), i5 + i6);
                    }
                } else if (size == 6) {
                    if (i2 < 3) {
                        imageView.layout((this.d * (i2 + 1)) + (i5 * i2), i7 - i5, (i5 * (i2 + 1)) + (this.d * (i2 + 1)), i7);
                    } else {
                        imageView.layout((this.d * (i2 - 2)) + ((i2 - 3) * i5), i6, (this.d * (i2 - 2)) + ((i2 - 2) * i5), i5 + i6);
                    }
                } else if (size == 7) {
                    if (i2 == 0) {
                        imageView.layout(i10, this.d, i10 + i5, i5 + this.d);
                    } else if (i2 <= 0 || i2 >= 4) {
                        imageView.layout((this.d * (i2 - 3)) + ((i2 - 4) * i5), (i5 / 2) + i6, (this.d * (i2 - 3)) + ((i2 - 3) * i5), i5 + i6 + (i5 / 2));
                    } else {
                        imageView.layout((this.d * i2) + ((i2 - 1) * i5), i10, (this.d * i2) + (i5 * i2), i5 + i10);
                    }
                } else if (size == 8) {
                    if (i2 == 0) {
                        imageView.layout(i9 - i5, this.d, i9, i5 + this.d);
                    } else if (i2 == 1) {
                        imageView.layout(i8, this.d, i8 + i5, i5 + this.d);
                    } else if (i2 <= 1 || i2 >= 5) {
                        imageView.layout((this.d * (i2 - 4)) + ((i2 - 5) * i5), (i5 / 2) + i6, (this.d * (i2 - 4)) + ((i2 - 4) * i5), i5 + i6 + (i5 / 2));
                    } else {
                        imageView.layout((this.d * (i2 - 1)) + ((i2 - 2) * i5), i10, (this.d * (i2 - 1)) + ((i2 - 1) * i5), i5 + i10);
                    }
                } else if (size == 9) {
                    imageView.layout(i11, i12, i13, i14);
                }
            }
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<T>, for r5v0, types: [java.util.List] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setImagesData(java.util.List<T> r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L_0x0008
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
        L_0x0008:
            int r1 = r4.c
            if (r1 <= 0) goto L_0x001a
            int r1 = r5.size()
            int r2 = r4.c
            if (r1 <= r2) goto L_0x001a
            int r1 = r4.c
            java.util.List r5 = r5.subList(r0, r1)
        L_0x001a:
            int r1 = r5.size()
            int[] r1 = a(r1)
            r2 = r1[r0]
            r4.a = r2
            r2 = 1
            r1 = r1[r2]
            r4.b = r1
            java.util.List<T> r1 = r4.h
            if (r1 != 0) goto L_0x0046
        L_0x002f:
            int r1 = r5.size()
            if (r0 >= r1) goto L_0x0056
            android.widget.ImageView r1 = r4.b(r0)
            if (r1 != 0) goto L_0x003c
        L_0x003b:
            return
        L_0x003c:
            android.view.ViewGroup$LayoutParams r2 = r4.generateDefaultLayoutParams()
            r4.addView(r1, r2)
            int r0 = r0 + 1
            goto L_0x002f
        L_0x0046:
            java.util.List<T> r0 = r4.h
            int r0 = r0.size()
            int r1 = r5.size()
            if (r0 <= r1) goto L_0x005c
            int r0 = r0 - r1
            r4.removeViews(r1, r0)
        L_0x0056:
            r4.h = r5
            r4.requestLayout()
            goto L_0x003b
        L_0x005c:
            if (r0 >= r1) goto L_0x0056
        L_0x005e:
            if (r0 >= r1) goto L_0x0056
            android.widget.ImageView r2 = r4.b(r0)
            if (r2 == 0) goto L_0x003b
            android.view.ViewGroup$LayoutParams r3 = r4.generateDefaultLayoutParams()
            r4.addView(r2, r3)
            int r0 = r0 + 1
            goto L_0x005e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.library.widget.groupicon.NineGridImageView.setImagesData(java.util.List):void");
    }

    private ImageView b(int i2) {
        if (i2 < this.g.size()) {
            return (ImageView) this.g.get(i2);
        }
        if (this.i != null) {
            ImageView generateImageView = this.i.generateImageView(getContext());
            this.g.add(generateImageView);
            return generateImageView;
        }
        Log.e("NineGirdImageView", "Your must set a NineGridImageViewAdapter for NineGirdImageView");
        return null;
    }

    protected static int[] a(int i2) {
        int i3;
        int[] iArr = new int[2];
        if (i2 < 3) {
            iArr[0] = 1;
            iArr[1] = i2;
        } else if (i2 <= 4) {
            iArr[0] = 2;
            iArr[1] = 2;
        } else {
            int i4 = i2 / 3;
            if (i2 % 3 == 0) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            iArr[0] = i3 + i4;
            iArr[1] = 3;
        }
        return iArr;
    }

    public void setAdapter(a aVar) {
        this.i = aVar;
    }

    public void setGap(int i2) {
        this.d = i2;
    }

    private int c(int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }

    private int d(int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }
}
