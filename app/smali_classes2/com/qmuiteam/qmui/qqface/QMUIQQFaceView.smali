.class public Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
.super Landroid/view/View;
.source "QMUIQQFaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;,
        Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;

.field private D:I

.field private E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

.field private F:Z

.field private G:Z

.field private H:Landroid/graphics/Typeface;

.field private I:I

.field private J:I

.field private K:I

.field private final L:[I

.field private M:Z

.field private N:Landroid/content/res/ColorStateList;

.field private O:I

.field P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

.field private Q:Z

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:I

.field private a:Ljava/lang/CharSequence;

.field private b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

.field private b0:I

.field private c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

.field private c0:I

.field private d:Z

.field private d0:I

.field private e:Landroid/text/TextPaint;

.field private e0:I

.field private f:Landroid/graphics/Paint;

.field private f0:Z

.field private g:I

.field private g0:Lcom/qmuiteam/qmui/span/d;

.field private h:Landroid/content/res/ColorStateList;

.field private h0:I

.field private i:I

.field private i0:Z

.field private j:I

.field private j0:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Landroid/graphics/Rect;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/content/res/ColorStateList;

.field private v:I

.field private w:I

.field private x:Landroid/text/TextUtils$TruncateAt;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIQQFaceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    const v3, 0x7fffffff

    .line 7
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 8
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    .line 11
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 12
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    .line 13
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    .line 14
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    .line 15
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    .line 16
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    .line 17
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    .line 18
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    .line 19
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B:I

    .line 20
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    .line 22
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    .line 23
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->G:Z

    .line 24
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->H:Landroid/graphics/Typeface;

    .line 25
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    .line 26
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    .line 27
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->K:I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 28
    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    .line 29
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->M:Z

    .line 30
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    .line 31
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    .line 32
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    .line 33
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    .line 34
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    .line 35
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->T:I

    .line 36
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    .line 37
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->V:I

    .line 38
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    .line 39
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b0:I

    .line 40
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    .line 41
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    .line 42
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    .line 43
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j0:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView:[I

    invoke-virtual {v5, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    invoke-static {p1, v4}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p3

    neg-int p3, p3

    iput p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B:I

    .line 46
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_textSize:I

    const/16 v5, 0xe

    .line 47
    invoke-static {p1, v5}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 48
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    .line 49
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_textColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    .line 50
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_singleLine:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    .line 51
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_maxLines:I

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 52
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_lineSpacingExtra:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setLineSpace(I)V

    .line 54
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_ellipsize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    .line 55
    iput-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 56
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 58
    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    .line 59
    :goto_0
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_maxWidth:I

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    .line 60
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_special_drawable_padding:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    .line 61
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_android_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 63
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    .line 64
    :cond_3
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_more_action_text:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    .line 65
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_more_action_color:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->t:Landroid/content/res/ColorStateList;

    .line 66
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIQQFaceView_qmui_more_action_bg_color:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u:Landroid/content/res/ColorStateList;

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    .line 69
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 70
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 71
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    .line 72
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s()V

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    invoke-static {}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->e()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setCompiler(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private A(Ljava/lang/CharSequence;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/g;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "mCompiler == null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 11
    :cond_3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    if-eqz p1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->b(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    .line 13
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    .line 14
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    .line 16
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v3

    sget-object v4, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v3, v4, :cond_4

    .line 17
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    new-instance v4, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->j()Lcom/qmuiteam/qmui/span/d;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;Lcom/qmuiteam/qmui/link/a;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;-><init>(II)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    .line 19
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 20
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_7

    .line 21
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    .line 22
    array-length v2, p1

    sub-int/2addr v2, p2

    if-eq v1, v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    invoke-static {}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->b()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 24
    :cond_7
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 26
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-eq p1, p2, :cond_c

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_9

    goto :goto_4

    .line 28
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v1, p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p1, p2, :cond_b

    .line 31
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e(I)I

    .line 33
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v1, p2

    div-int/2addr v0, v1

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 35
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g(I)V

    .line 36
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ne p1, p2, :cond_a

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 38
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    :goto_3
    return-void

    .line 40
    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private B(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->C(IZI)V

    return-void
.end method

.method private C(IZI)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    if-eqz p2, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p2, v1, :cond_1

    :cond_0
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr p2, v1

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    .line 3
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v3, :cond_6

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_2

    .line 5
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    if-le v1, v4, :cond_5

    .line 6
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v1, :cond_4

    .line 8
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    .line 9
    :cond_3
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    goto :goto_1

    .line 10
    :cond_4
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v4, p2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    :cond_5
    :goto_1
    if-eqz v3, :cond_7

    .line 11
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v3, p2, :cond_7

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    if-le p2, v1, :cond_7

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    .line 13
    invoke-virtual {v1}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x2

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x7

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/16 v0, 0x8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    aput-object v1, p2, v0

    const-string v0, "QMUIQQFaceView"

    const-string v1, "draw outside the visible height, the ellipsize is inaccurate: mEllipsize = %s; mCurrentDrawLine = %d; mNeedDrawLine = %d;viewWidth = %d; viewHeight = %d; paddingLeft = %d; paddingRight = %d; paddingTop = %d; paddingBottom = %d; text = %s"

    .line 16
    invoke-static {v0, v1, p2}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 17
    :cond_6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    .line 18
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z(II)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    return-object p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    return p0
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    return p0
.end method

.method private f(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v1, p2, v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 3
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    if-eqz v3, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    goto/16 :goto_6

    .line 5
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    .line 6
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    .line 7
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    add-int v5, v3, v4

    if-le v5, v1, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n(I)V

    .line 9
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    goto :goto_1

    :cond_2
    add-int v5, v3, v4

    if-ne v5, v1, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n(I)V

    goto :goto_1

    :cond_3
    add-int/2addr v3, v4

    .line 11
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    :goto_1
    sub-int v3, v1, v0

    .line 12
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    if-ge v3, v4, :cond_d

    .line 13
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    goto/16 :goto_5

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v4, v5, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->i()Ljava/lang/CharSequence;

    move-result-object v3

    .line 16
    invoke-direct {p0, v3, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->t(Ljava/lang/CharSequence;II)V

    goto/16 :goto_5

    .line 17
    :cond_5
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v4, v5, :cond_7

    .line 18
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object v4

    .line 19
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->j()Lcom/qmuiteam/qmui/span/d;

    move-result-object v3

    if-eqz v4, :cond_d

    .line 20
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    if-nez v3, :cond_6

    .line 21
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f(Ljava/util/List;I)V

    goto :goto_5

    .line 22
    :cond_6
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f(Ljava/util/List;I)V

    goto :goto_5

    .line 23
    :cond_7
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v4, v5, :cond_8

    .line 24
    invoke-direct {p0, v0, v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o(IZ)V

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v4

    sget-object v5, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v4, v5, :cond_d

    .line 26
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eqz v2, :cond_a

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v2, v4, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 30
    :cond_a
    :goto_2
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    :goto_3
    add-int/2addr v3, v4

    .line 31
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    add-int v5, v4, v3

    if-le v5, v1, :cond_b

    .line 32
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n(I)V

    .line 33
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    goto :goto_4

    :cond_b
    add-int v5, v4, v3

    if-ne v5, v1, :cond_c

    .line 34
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n(I)V

    goto :goto_4

    :cond_c
    add-int/2addr v4, v3

    .line 35
    iput v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    :goto_4
    sub-int v4, v1, v0

    if-ge v4, v3, :cond_d

    .line 36
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void
.end method

.method private g(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    .line 2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    return-void
.end method

.method private getMiddleEllipsizeLine()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 2
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3
    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method private h(Landroid/graphics/Canvas;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    add-int v12, v10, v11

    .line 2
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    int-to-float v4, v11

    .line 3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    int-to-float v5, v0

    iget-object v6, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    const-string v1, "..."

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_10

    move-object/from16 v15, p2

    .line 5
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    .line 6
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->k()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->g()I

    move-result v2

    const/4 v4, 0x0

    if-nez v14, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v14, v0, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_7

    .line 9
    :cond_3
    sget-object v2, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v1, v2, :cond_6

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v14, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v14, v0, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_7

    .line 11
    :cond_6
    sget-object v2, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v1, v2, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->i()Ljava/lang/CharSequence;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [F

    .line 14
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    move v6, v12

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    goto/16 :goto_7

    .line 16
    :cond_7
    sget-object v2, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v1, v2, :cond_d

    .line 17
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->j()Lcom/qmuiteam/qmui/span/d;

    move-result-object v2

    iput-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    .line 19
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-eqz v1, :cond_f

    .line 20
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 21
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    if-nez v2, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v9, v0, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h(Landroid/graphics/Canvas;Ljava/util/List;I)V

    goto/16 :goto_7

    .line 23
    :cond_8
    iput-boolean v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    if-eqz v0, :cond_9

    .line 24
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->f(II)V

    .line 25
    :cond_9
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/span/d;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    .line 26
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/span/d;->f()I

    move-result v2

    goto :goto_5

    :cond_a
    iget-object v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    .line 27
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/span/d;->d()I

    move-result v2

    :goto_5
    if-nez v2, :cond_b

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y()V

    goto :goto_6

    .line 29
    :cond_b
    iget-object v3, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 30
    :goto_6
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v9, v1, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h(Landroid/graphics/Canvas;Ljava/util/List;I)V

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y()V

    if-eqz v0, :cond_c

    .line 32
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->d(II)V

    .line 33
    :cond_c
    iput-boolean v13, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    goto :goto_7

    .line 34
    :cond_d
    sget-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v1, v0, :cond_f

    .line 35
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    add-int/2addr v0, v5

    .line 36
    iget-boolean v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v1, :cond_e

    iget-object v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_e

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v0, v12, v0

    if-gt v1, v0, :cond_e

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ne v0, v1, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v2, "..."

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 38
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    .line 39
    invoke-direct {v8, v9, v12}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i(Landroid/graphics/Canvas;I)V

    return-void

    .line 40
    :cond_e
    invoke-direct {v8, v11, v3, v10}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->C(IZI)V

    :cond_f
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private i(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    invoke-static {p2}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->t:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 8
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 11
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    sub-int/2addr v2, v3

    .line 12
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr v3, v4

    mul-int v2, v2, v3

    add-int/2addr p2, v2

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v5, p2

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_5

    .line 14
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v6, p2

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    int-to-float v7, p2

    iget-object v8, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 19
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->M:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    if-lez p2, :cond_8

    .line 20
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->N:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    :cond_6
    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 22
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz v1, :cond_7

    .line 23
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 24
    :cond_7
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28
    :cond_8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y()V

    :cond_9
    return-void
.end method

.method private j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V
    .locals 7
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/b;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    if-nez p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    if-nez p5, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    mul-int/lit8 p5, p5, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    :goto_2
    add-int/2addr p3, p5

    goto :goto_4

    :cond_4
    :goto_3
    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    :goto_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 p5, 0x0

    if-eqz p2, :cond_6

    .line 3
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget p6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    sub-int/2addr p2, p6

    div-int/lit8 p2, p2, 0x2

    add-int v1, p2, p6

    .line 4
    invoke-virtual {v0, p5, p2, p6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_6
    if-eqz p6, :cond_7

    .line 5
    iget p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    .line 6
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p6

    .line 8
    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    if-le p6, v1, :cond_8

    int-to-float v2, v1

    int-to-float p6, p6

    div-float/2addr v2, p6

    int-to-float p2, p2

    mul-float p2, p2, v2

    float-to-int p2, p2

    move p6, v1

    :cond_8
    sub-int/2addr v1, p6

    .line 9
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, p5

    add-int/2addr p6, v1

    .line 10
    invoke-virtual {v0, p5, v1, p2, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    const/4 p5, 0x1

    if-le p4, p5, :cond_9

    .line 12
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    sub-int/2addr p2, p4

    .line 13
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float p4, p4

    int-to-float p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    if-eqz p2, :cond_b

    .line 16
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/span/d;->h()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/span/d;->e()I

    move-result p2

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    .line 17
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/span/d;->c()I

    move-result p2

    :goto_6
    if-eqz p2, :cond_b

    .line 18
    iget-object p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p3

    .line 20
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v5, p2

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 21
    :cond_b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    if-eqz p2, :cond_e

    .line 23
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/span/d;->g()Z

    move-result p2

    if-eqz p2, :cond_e

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    if-lez p2, :cond_e

    .line 24
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->N:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    :cond_c
    if-eqz p2, :cond_e

    .line 25
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    .line 26
    iget-object p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {p5}, Lcom/qmuiteam/qmui/span/d;->h()Z

    move-result p5

    if-eqz p5, :cond_d

    .line 27
    iget-object p5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {p2, p5, p4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p4

    .line 28
    :cond_d
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    iget p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    .line 31
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p2

    iget-object v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V
    .locals 8

    if-le p4, p3, :cond_5

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/span/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/span/d;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    .line 4
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/span/d;->c()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v2, v0

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    sub-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v0, p5

    int-to-float v0, v0

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v1, v3

    int-to-float v5, v1

    iget-object v6, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v5, v0

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 9
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f0:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/span/d;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    if-lez p2, :cond_5

    .line 11
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->N:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    :cond_3
    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    .line 13
    iget-object p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g0:Lcom/qmuiteam/qmui/span/d;

    invoke-virtual {p4}, Lcom/qmuiteam/qmui/span/d;->h()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 14
    iget-object p4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr p2, p3

    .line 19
    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v1, p3

    int-to-float v4, p2

    add-int/2addr p3, p5

    int-to-float v3, p3

    iget-object v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private n(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o(IZ)V

    return-void
.end method

.method private o(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setContentCalMaxWidth(I)V

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, p2, :cond_1

    .line 7
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    iget p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    if-gt p1, p2, :cond_1

    .line 8
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V
    .locals 11

    move-object v9, p0

    move v5, p4

    move/from16 v6, p5

    if-eqz p2, :cond_0

    .line 1
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez p7, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    :goto_1
    add-int/2addr v0, v1

    .line 2
    :goto_2
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 3
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j0:I

    sub-int v4, p6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    return-void

    .line 4
    :cond_3
    iget v3, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    sub-int v3, v3, p6

    .line 5
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    sub-int v7, v6, v4

    sub-int v8, v1, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    .line 6
    iget v10, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    sub-int/2addr v10, v3

    if-lez v7, :cond_4

    sub-int/2addr v10, v8

    :cond_4
    if-lez v7, :cond_5

    sub-int v3, v6, v7

    goto :goto_3

    :cond_5
    sub-int v3, v6, v4

    sub-int v3, v1, v3

    .line 7
    :goto_3
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    if-ge v4, v10, :cond_7

    .line 8
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int v2, v0, v1

    if-le v2, v6, :cond_6

    sub-int v0, v6, v5

    .line 9
    invoke-direct {p0, p4, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto :goto_5

    :cond_6
    add-int/2addr v1, v0

    .line 11
    iput v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_5

    :cond_7
    if-ne v4, v10, :cond_a

    .line 12
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int v7, v0, v4

    if-gt v7, v3, :cond_8

    add-int/2addr v4, v0

    .line 13
    iput v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    if-lt v4, v3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    .line 14
    :goto_4
    iput v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    .line 15
    iput v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    .line 16
    iput v10, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j0:I

    if-eqz v8, :cond_b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto :goto_5

    :cond_a
    sub-int v4, p6, v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    :cond_b
    :goto_5
    return-void
.end method

.method private q(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V
    .locals 11

    move-object v8, p0

    move-object v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v4, p4

    if-lt v4, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 4
    :cond_1
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    sub-int v2, v2, p5

    .line 5
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    sub-int v9, v7, v5

    sub-int v10, v0, v6

    sub-int/2addr v9, v10

    .line 6
    iget v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    sub-int/2addr v10, v2

    if-lez v9, :cond_2

    add-int/lit8 v10, v10, -0x1

    :cond_2
    if-lez v9, :cond_3

    sub-int v0, v7, v9

    goto :goto_0

    :cond_3
    sub-int v2, v7, v5

    sub-int/2addr v0, v2

    .line 7
    :goto_0
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    if-ge v2, v10, :cond_5

    .line 8
    :goto_1
    array-length v0, v3

    if-ge v4, v0, :cond_9

    .line 9
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v1, v0

    aget v2, v3, v4

    add-float/2addr v1, v2

    int-to-float v2, v7

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    int-to-float v0, v0

    .line 10
    aget v1, v3, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sub-int v0, v6, v7

    .line 11
    invoke-direct {p0, v6, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    return-void

    :cond_5
    if-ne v2, v10, :cond_8

    .line 13
    :goto_2
    array-length v2, v3

    if-ge v4, v2, :cond_9

    .line 14
    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v5, v2

    aget v9, v3, v4

    add-float/2addr v5, v9

    int-to-float v9, v0

    cmpg-float v5, v5, v9

    if-gtz v5, :cond_6

    int-to-float v2, v2

    .line 15
    aget v5, v3, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v4, 0x1

    if-lt v2, v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    .line 16
    :goto_3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    .line 17
    iput v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    .line 18
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j0:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    :cond_9
    return-void
.end method

.method private r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    .line 3
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    :goto_0
    return-void
.end method

.method private setContentCalMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->T:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->T:I

    return-void
.end method

.method private t(Ljava/lang/CharSequence;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v4, v3, [F

    .line 2
    iget-object v5, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    sub-int v5, v2, v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_3

    int-to-float v10, v5

    .line 4
    aget v11, v4, v9

    const/4 v12, 0x1

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 5
    iput-boolean v12, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v13, 0x7d0

    cmp-long v15, v10, v13

    if-lez v15, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v8

    .line 7
    iget v4, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    const/4 v4, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "QMUIQQFaceView"

    const-string v2, "measureText: text = %s, mCurrentCalWidth = %d, widthStart = %d, widthEnd = %d"

    .line 9
    invoke-static {v1, v2, v3}, Lcom/qmuiteam/qmui/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iput-boolean v12, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    goto :goto_1

    .line 11
    :cond_1
    iget v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    int-to-float v10, v10

    aget v11, v4, v9

    add-float/2addr v10, v11

    int-to-float v11, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 12
    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n(I)V

    .line 13
    :cond_2
    iget v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    int-to-double v10, v10

    aget v12, v4, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V
    .locals 12
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v9, p0

    move/from16 v7, p4

    move/from16 v8, p5

    const/4 v0, -0x1

    move v6, p2

    if-ne v6, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-nez p6, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    :goto_3
    move v10, v0

    .line 2
    iget-boolean v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_8

    .line 4
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iget v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    sub-int v3, v1, v2

    if-le v0, v3, :cond_4

    sub-int v4, v2, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_4
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    .line 6
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int v1, v10, v0

    if-le v1, v8, :cond_5

    sub-int v0, v8, v7

    .line 7
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    .line 8
    invoke-direct/range {p0 .. p7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIZZ)V

    goto/16 :goto_4

    :cond_5
    add-int/2addr v0, v10

    .line 9
    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_4

    .line 10
    :cond_6
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    .line 11
    iget v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int v3, v10, v2

    if-ge v3, v0, :cond_7

    add-int/2addr v2, v10

    .line 12
    iput v2, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_4

    :cond_7
    add-int v0, v7, v1

    sub-int v1, v8, v7

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    goto/16 :goto_4

    .line 14
    :cond_8
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_e

    .line 15
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getMiddleEllipsizeLine()I

    move-result v11

    .line 16
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    if-ge v4, v11, :cond_a

    .line 17
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    if-le v0, v8, :cond_9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 20
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_4

    :cond_a
    if-ne v4, v11, :cond_d

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v5, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    div-int/lit8 v1, v5, 0x2

    sub-int/2addr v0, v1

    .line 22
    iget-boolean v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    if-eqz v1, :cond_b

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    .line 24
    :cond_b
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v1, v10

    if-gt v1, v0, :cond_c

    .line 25
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 26
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 28
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto/16 :goto_4

    .line 32
    :cond_e
    iget v4, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ne v4, v1, :cond_13

    .line 33
    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    .line 34
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_f

    .line 35
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v1, v0

    .line 36
    :cond_f
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int v2, v10, v0

    sub-int v1, v8, v1

    if-lt v2, v1, :cond_12

    add-int/2addr v0, v10

    if-ne v0, v1, :cond_10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 38
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    .line 39
    :cond_10
    iget-object v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_11

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 40
    iget v5, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 41
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v1, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    :cond_11
    move-object v2, p1

    .line 42
    invoke-direct {p0, p1, v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i(Landroid/graphics/Canvas;I)V

    sub-int v0, v8, v7

    .line 43
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    goto/16 :goto_4

    :cond_12
    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 45
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_4

    :cond_13
    move-object v2, p1

    if-ge v4, v1, :cond_16

    .line 46
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    if-le v0, v8, :cond_14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    goto :goto_4

    :cond_14
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p6

    move/from16 v6, p7

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 49
    iget v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_4

    :cond_15
    move-object v2, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 50
    invoke-direct/range {v0 .. v8}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V

    :cond_16
    :goto_4
    return-void
.end method

.method private v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V
    .locals 13

    move-object v8, p0

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p6

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move/from16 v4, p4

    if-lt v4, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_6

    .line 4
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    sub-int v3, v1, v2

    if-le v0, v3, :cond_1

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    goto/16 :goto_7

    :cond_1
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v4, v0, :cond_17

    .line 7
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v1, v0

    aget v2, v6, v4

    add-float/2addr v1, v2

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    int-to-float v0, v0

    .line 8
    aget v1, v6, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, v9, v7

    .line 9
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 11
    :cond_3
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    .line 12
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_17

    .line 13
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    int-to-float v2, v1

    aget v3, v6, v4

    add-float/2addr v2, v3

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    int-to-float v1, v1

    .line 14
    aget v2, v6, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v4, 0x1

    if-le v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v4, v2

    .line 15
    :goto_2
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v7

    sub-int v1, v9, v7

    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 17
    :cond_6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_e

    .line 18
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getMiddleEllipsizeLine()I

    move-result v10

    .line 19
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    if-ge v0, v10, :cond_9

    .line 20
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v10, v0

    move v11, v4

    .line 21
    :goto_3
    array-length v0, v6

    if-ge v11, v0, :cond_8

    int-to-float v0, v10

    .line 22
    aget v1, v6, v11

    add-float/2addr v1, v0

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 23
    aget v1, v6, v11

    add-float/2addr v0, v1

    float-to-int v10, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 24
    :cond_7
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v5, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, v9, v7

    .line 25
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 27
    :cond_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 28
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_7

    :cond_9
    if-ne v0, v10, :cond_d

    .line 29
    iget-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    goto/16 :goto_7

    :cond_a
    add-int v0, v9, v7

    .line 31
    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 32
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v11, v1

    move v12, v4

    .line 33
    :goto_4
    array-length v1, v6

    if-ge v12, v1, :cond_c

    int-to-float v1, v11

    .line 34
    aget v2, v6, v12

    add-float/2addr v2, v1

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    .line 35
    aget v2, v6, v12

    add-float/2addr v1, v2

    float-to-int v11, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 36
    :cond_b
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v5, v11, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 37
    iput v11, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 38
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    const-string v2, "..."

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 39
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h0:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    return-void

    .line 42
    :cond_c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v11, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 43
    iput v11, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_7

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIIII)V

    goto/16 :goto_7

    .line 45
    :cond_e
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v2, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ge v1, v2, :cond_11

    .line 46
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v10, v0

    move v11, v4

    .line 47
    :goto_5
    array-length v0, v6

    if-ge v11, v0, :cond_10

    int-to-float v0, v10

    .line 48
    aget v1, v6, v11

    add-float/2addr v1, v0

    int-to-float v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    .line 49
    aget v1, v6, v11

    add-float/2addr v0, v1

    float-to-int v10, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 50
    :cond_f
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v5, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, v9, v7

    .line 51
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    move-object v0, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    return-void

    .line 53
    :cond_10
    array-length v5, v6

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 54
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto/16 :goto_7

    :cond_11
    if-ne v1, v2, :cond_17

    .line 55
    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->v:I

    .line 56
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v2, :cond_12

    .line 57
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v1, v0

    .line 58
    :cond_12
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v10, v0

    move v5, v4

    .line 59
    :goto_6
    array-length v0, v6

    if-ge v5, v0, :cond_15

    int-to-float v0, v10

    .line 60
    aget v2, v6, v5

    add-float/2addr v2, v0

    sub-int v3, v9, v1

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_13

    .line 61
    aget v2, v6, v5

    add-float/2addr v0, v2

    float-to-int v10, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 62
    :cond_13
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 63
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    .line 64
    iget-object v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_14

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 65
    iget v5, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    const-string v2, "..."

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 66
    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    iget v1, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    :cond_14
    move-object v1, p1

    .line 67
    invoke-direct {p0, p1, v9}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i(Landroid/graphics/Canvas;I)V

    sub-int v0, v9, v7

    .line 68
    invoke-direct {p0, v7, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    return-void

    :cond_15
    move-object v1, p1

    .line 69
    array-length v5, v6

    iget v0, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v10, v0

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 70
    iput v10, v8, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_7

    :cond_16
    move-object v1, p1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V

    :cond_17
    :goto_7
    return-void
.end method

.method private w(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IIIZZ)V
    .locals 9
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v7, p0

    move v0, p5

    move v1, p6

    if-nez p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-nez p7, :cond_2

    if-eqz p8, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    :goto_1
    add-int/2addr v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    iget v2, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    :goto_3
    move v8, v2

    .line 2
    iget v2, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v2, v8

    if-le v2, v1, :cond_4

    sub-int/2addr v1, v0

    .line 3
    invoke-direct {p0, p5, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    .line 4
    :cond_4
    iget v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    add-int v4, v0, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;IZZ)V

    .line 5
    iget v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    return-void
.end method

.method private x(Landroid/graphics/Canvas;Ljava/lang/CharSequence;[FIII)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v4, p4

    .line 2
    :goto_0
    array-length v1, p3

    if-ge p4, v1, :cond_1

    int-to-float v1, v0

    .line 3
    aget v2, p3, p4

    add-float/2addr v1, v2

    int-to-float v2, p6

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, p6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    sub-int v0, p6, p5

    .line 5
    invoke-direct {p0, p5, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B(II)V

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    move v4, p4

    :cond_0
    int-to-float v0, v0

    .line 7
    aget v1, p3, p4

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length p4, p3

    if-ge v4, p4, :cond_2

    .line 9
    array-length v5, p3

    iget p3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    sub-int v6, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k(Landroid/graphics/Canvas;Ljava/lang/CharSequence;III)V

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    :cond_2
    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->L:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y:Z

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    iget v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ne v0, v1, :cond_3

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->K:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    sub-int/2addr v0, p1

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    sub-int/2addr v0, p1

    sub-int/2addr p2, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_0

    .line 7
    :cond_2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    goto :goto_0

    .line 8
    :cond_3
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e0:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected d()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    .line 5
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->G:Z

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m(Landroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v1

    .line 6
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->G:Z

    invoke-virtual {p0, v0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l(Landroid/graphics/Paint$FontMetricsInt;Z)I

    move-result v0

    sub-int/2addr v0, v1

    .line 7
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    .line 8
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->g()I

    move-result v2

    .line 9
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->k:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    neg-int v0, v1

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    goto :goto_0

    .line 12
    :cond_1
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    neg-int v1, v1

    sub-int/2addr v2, v0

    .line 13
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    .line 14
    :cond_2
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    return v0
.end method

.method protected e(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_5

    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->V:I

    if-ne v0, p1, :cond_1

    .line 3
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b0:I

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 4
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    return p1

    .line 5
    :cond_1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->V:I

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->f(Ljava/util/List;I)V

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    if-eq v0, v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->C:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v2, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;->a(I)V

    .line 13
    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->S:I

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 14
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    if-ne v0, v1, :cond_4

    .line 15
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->R:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    goto :goto_0

    .line 16
    :cond_4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    .line 17
    :goto_0
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b0:I

    .line 18
    iget p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 20
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    .line 21
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b0:I

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->W:I

    return p1
.end method

.method public getFontHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->K:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    return v0
.end method

.method public getLineSpace()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    return v0
.end method

.method public getMaxLine()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    return v0
.end method

.method public getMoreHitRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    return v0
.end method

.method protected l(Landroid/graphics/Paint$FontMetricsInt;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    return p1
.end method

.method protected m(Landroid/graphics/Paint$FontMetricsInt;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->y()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->l:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c0:I

    const/4 v3, 0x1

    .line 6
    iput v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d0:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z(II)V

    const/4 v3, 0x0

    .line 8
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i0:Z

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, p1, v2, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h(Landroid/graphics/Canvas;Ljava/util/List;I)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw spend time = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QMUIQQFaceView"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d()I

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 8
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    .line 9
    iput v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_2

    .line 10
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e(I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e(I)I

    .line 13
    :goto_1
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->F:Z

    const/high16 v6, -0x80000000

    if-eqz v3, :cond_4

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, p2

    .line 14
    :goto_2
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 15
    :cond_4
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    const/4 v3, 0x2

    if-eq v4, v6, :cond_7

    if-eq v4, v5, :cond_6

    .line 16
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    .line 18
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ge v4, v3, :cond_5

    .line 19
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 20
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr v5, v3

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v4, v3

    div-int/2addr v2, v4

    .line 22
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 23
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g(I)V

    goto :goto_6

    .line 24
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr p2, v2

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    add-int/2addr v4, v2

    div-int/2addr p2, v4

    .line 25
    iget v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 26
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g(I)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    .line 28
    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->z:I

    if-ge v4, v3, :cond_8

    .line 29
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    :goto_3
    mul-int v4, v4, v3

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 30
    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->j:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    add-int/2addr v5, v3

    mul-int v4, v4, v5

    add-int/2addr v4, v3

    iget v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A:I

    iget v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    :goto_4
    mul-int v3, v3, v5

    add-int/2addr v4, v3

    :goto_5
    add-int/2addr p2, v4

    .line 31
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLines = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; height = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; maxLine = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; measure time = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QMUIQQFaceView"

    .line 34
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-nez v3, :cond_1

    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;->run()V

    .line 10
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    :cond_2
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    if-eq v2, v3, :cond_7

    const/4 p1, 0x2

    if-eq v2, p1, :cond_5

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    goto/16 :goto_2

    .line 11
    :cond_3
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1, v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e(Z)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a()V

    goto/16 :goto_2

    .line 15
    :cond_4
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz p1, :cond_10

    .line 16
    iput-boolean v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 17
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c(II)Z

    move-result p1

    if-nez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-virtual {p1, v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e(Z)V

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a()V

    .line 21
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    goto/16 :goto_2

    .line 22
    :cond_6
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_10

    .line 23
    iput-boolean v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 24
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->b()V

    .line 27
    new-instance p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->E:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    .line 28
    new-instance p1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;-><init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 29
    :cond_8
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-eqz p1, :cond_10

    .line 30
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->C:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;

    if-eqz p1, :cond_9

    .line 31
    invoke-interface {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;->b()V

    goto :goto_0

    .line 32
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 34
    :cond_a
    :goto_0
    iput-boolean v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 35
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 36
    :cond_b
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    .line 37
    iput-boolean v5, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 38
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 39
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    .line 40
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 41
    :cond_c
    iget-object v2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    .line 42
    invoke-virtual {v4, v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->c(II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 43
    iput-object v4, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    .line 44
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    if-eqz v0, :cond_f

    .line 45
    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->e(Z)V

    .line 46
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->P:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$d;->a()V

    goto :goto_2

    .line 47
    :cond_f
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->q:Z

    if-nez v0, :cond_10

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_10
    :goto_2
    return v3
.end method

.method public setCompiler(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->x:Landroid/text/TextUtils$TruncateAt;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->K:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->G:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->G:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineSpace(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLinkUnderLineColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setLinkUnderLineColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLinkUnderLineColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->N:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->N:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLinkUnderLineHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->O:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->C:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$c;

    return-void
.end method

.method public setMaxLine(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->m:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->D:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMoreActionBgColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setMoreActionBgColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setMoreActionBgColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->u:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMoreActionColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setMoreActionColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setMoreActionColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->t:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->t:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMoreActionText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setNeedUnderlineForMoreText(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->M:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->M:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOpenQQFace(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->d:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setParagraphSpace(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->I:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setQQFaceSizeAddon(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->B:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->n:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpecialDrawablePadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->J:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->A(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->h:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->g:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->U:Z

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->w:I

    .line 7
    invoke-direct {p0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->s()V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->H:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->H:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->Q:Z

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 7
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 11
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 12
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 14
    iget-object p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->e:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method
