.class public final Lcom/qmuiteam/qmui/util/a;
.super Ljava/lang/Object;
.source "QMUICollapsingTextHelper.java"


# static fields
.field private static final W:Z

.field private static final X:Landroid/graphics/Paint;


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Z

.field private C:Z

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Paint;

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:[I

.field private K:Z

.field private final L:Landroid/text/TextPaint;

.field private M:Landroid/view/animation/Interpolator;

.field private N:Landroid/view/animation/Interpolator;

.field private O:F

.field private P:F

.field private Q:F

.field private R:I

.field private S:F

.field private T:F

.field private U:F

.field private V:I

.field private final a:Landroid/view/View;

.field private b:Z

.field private c:F

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Landroid/graphics/Typeface;

.field private x:Landroid/graphics/Typeface;

.field private y:Landroid/graphics/Typeface;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/qmuiteam/qmui/util/a;->W:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/qmuiteam/qmui/util/a;->X:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    sget-object v0, Lcom/qmuiteam/qmui/util/a;->X:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/util/a;-><init>(Landroid/view/View;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    .line 7
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    .line 8
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    .line 9
    iput p2, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->f:Landroid/graphics/RectF;

    return-void
.end method

.method public static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 95
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    .line 96
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method private static a(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 94
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 97
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(F)V
    .locals 6

    .line 17
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/a;->d(F)V

    .line 18
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->o:F

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->p:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->q:F

    .line 19
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->m:F

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->n:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->r:F

    .line 20
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->v:F

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->u:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    .line 21
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->t:F

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->s:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    .line 22
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->N:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/util/a;->e(F)V

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    .line 25
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->s()I

    move-result v1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->r()I

    move-result v2

    .line 26
    invoke-static {v1, v2, p1}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->S:F

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->O:F

    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v2, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->T:F

    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->P:F

    .line 30
    invoke-static {v2, v4, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->U:F

    iget v5, p0, Lcom/qmuiteam/qmui/util/a;->Q:F

    .line 31
    invoke-static {v4, v5, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->V:I

    iget v5, p0, Lcom/qmuiteam/qmui/util/a;->R:I

    .line 32
    invoke-static {v4, v5, p1}, Lcom/qmuiteam/qmui/util/b;->a(IIF)I

    move-result p1

    .line 33
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 34
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 36
    sget-object v0, Landroidx/core/c/e;->d:Landroidx/core/c/d;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/core/c/e;->c:Landroidx/core/c/d;

    .line 37
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/c/d;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private c(F)V
    .locals 9

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->z:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 17
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 18
    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpl-float v7, v2, v5

    if-nez v7, :cond_1

    .line 19
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->y:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    if-eq v2, v7, :cond_2

    .line 20
    iput-object v7, p0, Lcom/qmuiteam/qmui/util/a;->y:Landroid/graphics/Typeface;

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->y:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    if-eq v2, v7, :cond_2

    .line 22
    iput-object v7, p0, Lcom/qmuiteam/qmui/util/a;->y:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 23
    :goto_1
    iget v7, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    invoke-static {p1, v7}, Lcom/qmuiteam/qmui/util/a;->a(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 24
    iget p1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    .line 25
    iput v5, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    goto :goto_4

    .line 26
    :cond_3
    iget v7, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    .line 27
    invoke-static {p1, v7}, Lcom/qmuiteam/qmui/util/a;->a(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 28
    iput v5, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    goto :goto_2

    .line 29
    :cond_4
    iget v8, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    div-float/2addr p1, v8

    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    .line 30
    :goto_2
    iget p1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    iget v8, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    div-float/2addr p1, v8

    mul-float v8, v1, p1

    cmpl-float v8, v8, v0

    if-lez v8, :cond_5

    div-float/2addr v0, p1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    move p1, v7

    :goto_4
    cmpl-float v1, v0, v3

    if-lez v1, :cond_8

    .line 32
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->I:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/util/a;->K:Z

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v2, 0x1

    .line 33
    :goto_6
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->I:F

    .line 34
    iput-boolean v6, p0, Lcom/qmuiteam/qmui/util/a;->K:Z

    .line 35
    :cond_8
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v2, :cond_b

    .line 36
    :cond_9
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->I:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 37
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 39
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->z:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 41
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/a;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/util/a;->B:Z

    :cond_b
    return-void
.end method

.method private d(F)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->m:F

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->n:F

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/qmuiteam/qmui/util/a;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private e(I)Landroid/graphics/Typeface;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ac

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw v0
.end method

.method private e(F)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/a;->c(F)V

    .line 7
    sget-boolean p1, Lcom/qmuiteam/qmui/util/a;->W:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/util/a;->C:Z

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->q()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->R(Landroid/view/View;)V

    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/util/a;->b(F)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->F:F

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/util/a;->G:F

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->G:F

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->F:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    .line 9
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->E:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/util/a;->E:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private r()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->J:[I

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private s()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->J:[I

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 49
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->I:F

    .line 50
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/util/a;->c(F)V

    .line 51
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->s:F

    .line 53
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v4, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->u:F

    .line 54
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    iget-boolean v4, p0, Lcom/qmuiteam/qmui/util/a;->B:Z

    invoke-static {v1, v4}, Landroidx/core/view/d;->a(II)I

    move-result v1

    and-int/lit8 v4, v1, 0x70

    const/16 v5, 0x50

    const/16 v6, 0x30

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    .line 55
    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->u:F

    div-float/2addr v4, v7

    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v4, v8

    .line 56
    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    iput v8, p0, Lcom/qmuiteam/qmui/util/a;->n:F

    goto :goto_1

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float/2addr v4, v8

    iput v4, p0, Lcom/qmuiteam/qmui/util/a;->n:F

    goto :goto_1

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v8

    sub-float/2addr v4, v8

    iput v4, p0, Lcom/qmuiteam/qmui/util/a;->n:F

    :goto_1
    const v4, 0x800007

    and-int/2addr v1, v4

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_3

    .line 59
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->p:F

    goto :goto_2

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v10, p0, Lcom/qmuiteam/qmui/util/a;->s:F

    sub-float/2addr v1, v10

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->p:F

    goto :goto_2

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v10, p0, Lcom/qmuiteam/qmui/util/a;->s:F

    div-float/2addr v10, v7

    sub-float/2addr v1, v10

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->p:F

    .line 62
    :goto_2
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/util/a;->c(F)V

    .line 63
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    .line 64
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v3, v1, v2, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :cond_5
    iput v3, p0, Lcom/qmuiteam/qmui/util/a;->t:F

    .line 65
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->v:F

    .line 66
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    iget-boolean v2, p0, Lcom/qmuiteam/qmui/util/a;->B:Z

    invoke-static {v1, v2}, Landroidx/core/view/d;->a(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_6

    .line 67
    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->v:F

    div-float/2addr v2, v7

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 68
    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v3, p0, Lcom/qmuiteam/qmui/util/a;->m:F

    goto :goto_3

    .line 69
    :cond_6
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/qmuiteam/qmui/util/a;->m:F

    goto :goto_3

    .line 70
    :cond_7
    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/qmuiteam/qmui/util/a;->m:F

    :goto_3
    and-int/2addr v1, v4

    if-eq v1, v9, :cond_9

    if-eq v1, v8, :cond_8

    .line 71
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->o:F

    goto :goto_4

    .line 72
    :cond_8
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->t:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->o:F

    goto :goto_4

    .line 73
    :cond_9
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->t:F

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->o:F

    .line 74
    :goto_4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->p()V

    .line 75
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/util/a;->e(F)V

    return-void
.end method

.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-static {p1, v0, v1}, Lcom/qmuiteam/qmui/util/g;->a(FFF)F

    move-result p1

    .line 43
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 44
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    .line 45
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->b()V

    :cond_0
    return-void
.end method

.method public a(FFZ)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iput p2, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 15
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    .line 17
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->j:F

    .line 19
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->R:I

    .line 20
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->P:F

    .line 21
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->Q:F

    .line 22
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->O:F

    .line 23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 25
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/a;->e(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/util/a;->K:Z

    .line 30
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->n()V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    if-eq v0, p2, :cond_1

    .line 32
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    .line 33
    iput p2, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    if-eqz p3, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p2, :cond_1

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    .line 12
    iput-object p2, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/util/a;->b:Z

    if-eqz v1, :cond_5

    .line 78
    iget v6, p0, Lcom/qmuiteam/qmui/util/a;->q:F

    .line 79
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->r:F

    .line 80
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/util/a;->C:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 81
    iget v3, p0, Lcom/qmuiteam/qmui/util/a;->F:F

    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    mul-float v3, v3, v4

    goto :goto_1

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    mul-float v3, v3, v4

    .line 83
    iget-object v4, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    .line 84
    iget v1, p0, Lcom/qmuiteam/qmui/util/a;->H:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    .line 86
    iget-object v1, p0, Lcom/qmuiteam/qmui/util/a;->D:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/qmuiteam/qmui/util/a;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/qmuiteam/qmui/util/a;->L:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    .line 41
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Z)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    if-eq v0, p2, :cond_1

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    .line 37
    iput-object p2, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    if-eqz p3, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->M:Landroid/view/animation/Interpolator;

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->z:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->z:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->A:Ljava/lang/CharSequence;

    .line 92
    invoke-direct {p0}, Lcom/qmuiteam/qmui/util/a;->p()V

    .line 93
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_1
    return-void
.end method

.method public final a([I)Z
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->J:[I

    .line 47
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 16
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/util/a;->b(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    if-eq v0, p1, :cond_0

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    .line 12
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/util/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/util/a;->K:Z

    .line 9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->n()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    .line 15
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->N:Landroid/view/animation/Interpolator;

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->h:I

    return v0
.end method

.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    .line 4
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_textSize:I

    iget v2, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->i:F

    .line 6
    :cond_1
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->V:I

    .line 7
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->T:F

    .line 8
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->U:F

    .line 9
    sget v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/util/a;->S:F

    .line 10
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 12
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/util/a;->e(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    return-void
.end method

.method public d()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->u:F

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->o()V

    :cond_0
    return-void
.end method

.method public e()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->s:F

    return v0
.end method

.method public f()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->w:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->g:I

    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->v:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->t:F

    return v0
.end method

.method public j()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->x:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/util/a;->c:F

    return v0
.end method

.method public l()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->z:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/util/a;->b:Z

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/util/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/util/a;->b()V

    :cond_0
    return-void
.end method
