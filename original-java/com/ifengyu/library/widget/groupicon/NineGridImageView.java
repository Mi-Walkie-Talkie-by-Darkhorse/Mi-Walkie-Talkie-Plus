package com.ifengyu.library.widget.groupicon;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.ifengyu.library.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class NineGridImageView<T> extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private int f7194a;

    /* renamed from: b  reason: collision with root package name */
    private int f7195b;

    /* renamed from: c  reason: collision with root package name */
    private int f7196c;
    private int d;
    private int e;
    private List<ImageView> f;
    private List<T> g;
    private a<T> h;

    public NineGridImageView(Context context) {
        this(context, null);
    }

    private void a() {
        List<T> list = this.g;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ImageView imageView = (ImageView) getChildAt(i);
                a<T> aVar = this.h;
                if (aVar != null) {
                    aVar.a(getContext(), imageView, this.g.get(i));
                }
                int i2 = this.f7194a;
                int i3 = i / i2;
                int i4 = i % i2;
                int i5 = this.d;
                int i6 = this.f7196c;
                int i7 = (i5 - ((i2 + 1) * i6)) / i2;
                int i8 = this.e;
                int i9 = (i8 + i6) / 2;
                int i10 = (i8 - i6) / 2;
                int i11 = (i5 + i6) / 2;
                int i12 = (i5 - i6) / 2;
                int i13 = (i8 - i7) / 2;
                int i14 = (i7 * i4) + ((i4 + 1) * i6);
                int i15 = (i7 * i3) + ((i3 + 1) * i6);
                int i16 = i14 + i7;
                int i17 = i15 + i7;
                if (size == 1) {
                    imageView.layout(i14, i15, i16, i17);
                } else if (size == 2) {
                    imageView.layout(i14, i13, i16, i7 + i13);
                } else if (size == 3) {
                    if (i == 0) {
                        imageView.layout(i13, i15, i7 + i13, i17);
                    } else {
                        imageView.layout((i6 * i) + ((i - 1) * i7), i9, (i6 * i) + (i7 * i), i7 + i9);
                    }
                } else if (size == 4) {
                    imageView.layout(i14, i15, i16, i17);
                } else if (size == 5) {
                    if (i == 0) {
                        int i18 = i12 - i7;
                        imageView.layout(i18, i18, i12, i12);
                    } else if (i == 1) {
                        imageView.layout(i11, i12 - i7, i7 + i11, i12);
                    } else {
                        int i19 = i - 1;
                        imageView.layout((i6 * i19) + ((i - 2) * i7), i9, (i6 * i19) + (i19 * i7), i7 + i9);
                    }
                } else if (size == 6) {
                    if (i < 3) {
                        int i20 = i + 1;
                        imageView.layout((i6 * i20) + (i7 * i), i10 - i7, (i6 * i20) + (i7 * i20), i10);
                    } else {
                        int i21 = i - 2;
                        imageView.layout((i6 * i21) + ((i - 3) * i7), i9, (i6 * i21) + (i21 * i7), i7 + i9);
                    }
                } else if (size == 7) {
                    if (i == 0) {
                        imageView.layout(i13, i6, i13 + i7, i7 + i6);
                    } else if (i <= 0 || i >= 4) {
                        int i22 = this.f7196c;
                        int i23 = i - 3;
                        int i24 = i9 + (i7 / 2);
                        imageView.layout((i22 * i23) + ((i - 4) * i7), i24, (i22 * i23) + (i23 * i7), i7 + i24);
                    } else {
                        imageView.layout((i6 * i) + ((i - 1) * i7), i13, (i6 * i) + (i7 * i), i7 + i13);
                    }
                } else if (size == 8) {
                    if (i == 0) {
                        imageView.layout(i12 - i7, i6, i12, i7 + i6);
                    } else if (i == 1) {
                        imageView.layout(i11, i6, i11 + i7, i7 + i6);
                    } else if (i <= 1 || i >= 5) {
                        int i25 = this.f7196c;
                        int i26 = i - 4;
                        int i27 = i9 + (i7 / 2);
                        imageView.layout((i25 * i26) + ((i - 5) * i7), i27, (i25 * i26) + (i26 * i7), i7 + i27);
                    } else {
                        int i28 = i - 1;
                        imageView.layout((i6 * i28) + ((i - 2) * i7), i13, (i6 * i28) + (i28 * i7), i7 + i13);
                    }
                } else if (size == 9) {
                    imageView.layout(i14, i15, i16, i17);
                }
            }
        }
    }

    private ImageView b(int i) {
        if (i < this.f.size()) {
            return this.f.get(i);
        }
        a<T> aVar = this.h;
        if (aVar != null) {
            ImageView a2 = aVar.a(getContext());
            this.f.add(a2);
            return a2;
        }
        Log.e("NineGirdImageView", "Your must set a NineGridImageViewAdapter for NineGirdImageView");
        return null;
    }

    private int c(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }

    private int d(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(200, size);
        }
        return 200;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        a();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.d = d(i);
        int c2 = c(i2);
        this.e = c2;
        setMeasuredDimension(this.d, c2);
    }

    public void setAdapter(a aVar) {
        this.h = aVar;
    }

    public void setGap(int i) {
        this.f7196c = i;
    }

    public void setImagesData(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        if (this.f7195b > 0) {
            int size = list.size();
            int i = this.f7195b;
            if (size > i) {
                list = list.subList(0, i);
            }
        }
        int[] a2 = a(list.size());
        int i2 = a2[0];
        this.f7194a = a2[1];
        List<T> list2 = this.g;
        if (list2 == null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                ImageView b2 = b(i3);
                if (b2 != null) {
                    addView(b2, generateDefaultLayoutParams());
                } else {
                    return;
                }
            }
        } else {
            int size2 = list2.size();
            int size3 = list.size();
            if (size2 > size3) {
                removeViews(size3, size2 - size3);
            } else if (size2 < size3) {
                while (size2 < size3) {
                    ImageView b3 = b(size2);
                    if (b3 != null) {
                        addView(b3, generateDefaultLayoutParams());
                        size2++;
                    } else {
                        return;
                    }
                }
            }
        }
        this.g = list;
        requestLayout();
    }

    public NineGridImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7195b = 9;
        this.f = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NineGridImageView);
        this.f7196c = (int) obtainStyledAttributes.getDimension(R$styleable.NineGridImageView_imgGap, 8.0f);
        obtainStyledAttributes.recycle();
    }

    protected static int[] a(int i) {
        int[] iArr = new int[2];
        if (i < 3) {
            iArr[0] = 1;
            iArr[1] = i;
        } else if (i <= 4) {
            iArr[0] = 2;
            iArr[1] = 2;
        } else {
            iArr[0] = (i / 3) + (i % 3 == 0 ? 0 : 1);
            iArr[1] = 3;
        }
        return iArr;
    }
}
