package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IndoorFloorSwitchView */
public class ep extends ScrollView {
    public static final String a = ep.class.getSimpleName();
    int b = 1;
    private Context c;
    private LinearLayout d;
    /* access modifiers changed from: private */
    public int e = 0;
    private List<String> f;
    private int g = -1;
    /* access modifiers changed from: private */
    public int h;
    /* access modifiers changed from: private */
    public Bitmap i = null;
    /* access modifiers changed from: private */
    public int j = Color.parseColor("#eeffffff");
    /* access modifiers changed from: private */
    public int k = Color.parseColor("#44383838");
    /* access modifiers changed from: private */
    public int l = 4;
    /* access modifiers changed from: private */
    public int m = 1;
    private int n;
    /* access modifiers changed from: private */
    public int o;
    /* access modifiers changed from: private */
    public Runnable p;
    /* access modifiers changed from: private */
    public int q = 50;
    private a r;

    /* compiled from: IndoorFloorSwitchView */
    public interface a {
        void a(int i);
    }

    public ep(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.c = context;
        setVerticalScrollBarEnabled(false);
        try {
            if (this.i == null) {
                InputStream open = dz.a(context).open("map_indoor_select.png");
                this.i = BitmapFactory.decodeStream(open);
                open.close();
            }
        } catch (Throwable th) {
        }
        this.d = new LinearLayout(context);
        this.d.setOrientation(1);
        addView(this.d);
        this.p = new Runnable() {
            public void run() {
                if (ep.this.o - ep.this.getScrollY() != 0) {
                    ep.this.o = ep.this.getScrollY();
                    ep.this.postDelayed(ep.this.p, (long) ep.this.q);
                } else if (ep.this.e != 0) {
                    final int a2 = ep.this.o % ep.this.e;
                    final int a3 = ep.this.o / ep.this.e;
                    if (a2 == 0) {
                        ep.this.b = a3 + ep.this.m;
                        ep.this.g();
                    } else if (a2 > ep.this.e / 2) {
                        ep.this.post(new Runnable() {
                            public void run() {
                                ep.this.smoothScrollTo(0, (ep.this.o - a2) + ep.this.e);
                                ep.this.b = a3 + ep.this.m + 1;
                                ep.this.g();
                            }
                        });
                    } else {
                        ep.this.post(new Runnable() {
                            public void run() {
                                ep.this.smoothScrollTo(0, ep.this.o - a2);
                                ep.this.b = a3 + ep.this.m;
                                ep.this.g();
                            }
                        });
                    }
                }
            }
        };
    }

    public void a() {
        this.o = getScrollY();
        postDelayed(this.p, (long) this.q);
    }

    private void e() {
        if (this.f != null && this.f.size() != 0) {
            this.d.removeAllViews();
            this.n = (this.m * 2) + 1;
            for (int size = this.f.size() - 1; size >= 0; size--) {
                this.d.addView(b((String) this.f.get(size)));
            }
            a(0);
        }
    }

    private TextView b(String str) {
        TextView textView = new TextView(this.c);
        textView.setLayoutParams(new LayoutParams(-1, -2));
        textView.setSingleLine(true);
        textView.setTextSize(2, 16.0f);
        textView.setText(str);
        textView.setGravity(17);
        textView.getPaint().setFakeBoldText(true);
        int a2 = a(this.c, 8.0f);
        int a3 = a(this.c, 6.0f);
        textView.setPadding(a2, a3, a2, a3);
        if (this.e == 0) {
            this.e = a((View) textView);
            this.d.setLayoutParams(new LayoutParams(-2, this.e * this.n));
            setLayoutParams(new LinearLayout.LayoutParams(-2, this.e * this.n));
        }
        return textView;
    }

    private void a(int i2) {
        if (this.e != 0) {
            int i3 = i2 % this.e;
            int i4 = i2 / this.e;
            int i5 = i3 == 0 ? this.m + i4 : i3 > this.e / 2 ? this.m + i4 + 1 : (i2 / this.e) + this.m;
            int childCount = this.d.getChildCount();
            int i6 = 0;
            while (i6 < childCount) {
                TextView textView = (TextView) this.d.getChildAt(i6);
                if (textView != null) {
                    if (i5 == i6) {
                        textView.setTextColor(Color.parseColor("#0288ce"));
                    } else {
                        textView.setTextColor(Color.parseColor("#bbbbbb"));
                    }
                    i6++;
                } else {
                    return;
                }
            }
        }
    }

    public void a(String[] strArr) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.f.clear();
        for (String add : strArr) {
            this.f.add(add);
        }
        for (int i2 = 0; i2 < this.m; i2++) {
            this.f.add(0, "");
            this.f.add("");
        }
        e();
    }

    public void setBackgroundColor(int i2) {
        this.j = i2;
    }

    public void b() {
        if (this.i != null && !this.i.isRecycled()) {
            this.i.recycle();
            this.i = null;
        }
        if (this.r != null) {
            this.r = null;
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (this.h == 0) {
            try {
                this.h = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getWidth();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        super.setBackgroundDrawable(new Drawable() {
            public void draw(Canvas canvas) {
                try {
                    a(canvas);
                    b(canvas);
                    c(canvas);
                } catch (Throwable th) {
                }
            }

            private void a(Canvas canvas) {
                canvas.drawColor(ep.this.j);
            }

            private void b(Canvas canvas) {
                Paint paint = new Paint();
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                rect.left = 0;
                rect.top = 0;
                rect.right = ep.this.i.getWidth() + 0;
                rect.bottom = ep.this.i.getHeight() + 0;
                rect2.left = 0;
                rect2.top = ep.this.f()[0];
                rect2.right = ep.this.h + 0;
                rect2.bottom = ep.this.f()[1];
                canvas.drawBitmap(ep.this.i, rect, rect2, paint);
            }

            private void c(Canvas canvas) {
                Paint paint = new Paint();
                Rect clipBounds = canvas.getClipBounds();
                paint.setColor(ep.this.k);
                paint.setStyle(Style.STROKE);
                paint.setStrokeWidth((float) ep.this.l);
                canvas.drawRect(clipBounds, paint);
            }

            public void setAlpha(int i) {
            }

            public void setColorFilter(ColorFilter colorFilter) {
            }

            public int getOpacity() {
                return 0;
            }
        });
    }

    /* access modifiers changed from: private */
    public int[] f() {
        if (0 != 0) {
            return null;
        }
        return new int[]{this.e * this.m, this.e * (this.m + 1)};
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.h = i2;
        try {
            setBackgroundDrawable(null);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: protected */
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        a(i3);
        if (i3 > i5) {
            this.g = 1;
        } else {
            this.g = 0;
        }
    }

    /* access modifiers changed from: private */
    public void g() {
        if (this.r != null) {
            try {
                this.r.a(c());
            } catch (Throwable th) {
            }
        }
    }

    public void a(String str) {
        if (this.f != null && this.f.size() != 0) {
            final int size = ((this.f.size() - this.m) - 1) - this.f.indexOf(str);
            this.b = this.m + size;
            post(new Runnable() {
                public void run() {
                    ep.this.smoothScrollTo(0, size * ep.this.e);
                }
            });
        }
    }

    public int c() {
        if (this.f == null || this.f.size() == 0) {
            return 0;
        }
        return Math.min(this.f.size() - (this.m * 2), Math.max(0, ((this.f.size() - 1) - this.b) - this.m));
    }

    public void fling(int i2) {
        super.fling(i2 / 3);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void a(a aVar) {
        this.r = aVar;
    }

    public static int a(Context context, float f2) {
        return (int) ((context.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    public static int a(View view) {
        b(view);
        return view.getMeasuredHeight();
    }

    public static void b(View view) {
        view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void a(boolean z) {
        setVisibility(z ? 0 : 8);
    }

    public boolean d() {
        return getVisibility() == 0;
    }
}
