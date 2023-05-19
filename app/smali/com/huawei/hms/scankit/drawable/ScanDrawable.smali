.class public Lcom/huawei/hms/scankit/drawable/ScanDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScanDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final a:[I

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private final e:Landroid/animation/ValueAnimator;

.field private final f:Landroid/animation/ValueAnimator;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/ColorMatrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private p:I

.field private q:I

.field private r:F

.field private s:Z

.field private t:F

.field private u:I

.field private v:Lcom/huawei/hms/scankit/p/re;

.field private w:F

.field private x:Z

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a:[I

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/drawable/a;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/huawei/hms/scankit/drawable/a;-><init>(FFFF)V

    sput-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/drawable/a;

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/huawei/hms/scankit/drawable/a;-><init>(FFFF)V

    sput-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->c:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Lcom/huawei/hms/scankit/drawable/a;

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/huawei/hms/scankit/drawable/a;-><init>(FFFF)V

    sput-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->d:Landroid/view/animation/Interpolator;

    return-void

    nop

    :array_0
    .array-data 4
        0xcfe8fd
        0x573cd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->g:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->h:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->i:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->j:Landroid/graphics/ColorMatrix;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->k:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->m:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->n:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->o:Landroid/graphics/Rect;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->r:F

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->x:Z

    .line 17
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->A:Landroid/animation/AnimatorSet;

    .line 18
    invoke-direct {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F
    .locals 0

    .line 4
    iput p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 3
    sget-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "ScanDrawable"

    const-string v0, "resources is null when init drawable"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/huawei/hms/scankit/R$drawable;->scankit_scan_light:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    .line 9
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 12
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    sget v0, Lcom/huawei/hms/scankit/R$drawable;->scankit_scan_tail:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->w:F

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 34
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->r:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, v2

    .line 36
    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->j:Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v1, v3, v6

    const/4 v6, 0x2

    aput v1, v3, v6

    const/4 v6, 0x3

    aput v1, v3, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput v7, v3, v6

    const/4 v6, 0x5

    aput v1, v3, v6

    add-float v6, v1, v5

    const/4 v8, 0x6

    aput v6, v3, v8

    const/4 v8, 0x7

    aput v1, v3, v8

    const/16 v8, 0x8

    aput v1, v3, v8

    const/16 v8, 0x9

    aput v7, v3, v8

    const/16 v8, 0xa

    aput v1, v3, v8

    const/16 v8, 0xb

    aput v1, v3, v8

    const/16 v8, 0xc

    aput v6, v3, v8

    const/16 v6, 0xd

    aput v1, v3, v6

    const/16 v1, 0xe

    aput v7, v3, v1

    const/16 v1, 0xf

    aput v7, v3, v1

    const/16 v1, 0x10

    aput v7, v3, v1

    const/16 v1, 0x11

    aput v7, v3, v1

    const/16 v1, 0x12

    aput v5, v3, v1

    const/16 v1, 0x13

    aput v7, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 37
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->i:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->j:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 38
    iget v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->p:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v2

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 39
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    if-eqz v1, :cond_0

    .line 40
    iget v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    add-int v2, v1, v0

    sub-int/2addr v1, v0

    .line 41
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 42
    :cond_0
    iget v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    .line 43
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 45
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->l:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->z:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->k:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 47
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_1

    :cond_1
    const-string p1, "ScanDrawable"

    const-string v0, "drawLight failed, light bitmap is null"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->g:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 31
    iget-object p2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->y:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 32
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :cond_0
    const-string p1, "ScanDrawable"

    const-string p2, "dawTail failed, input bitmap is null"

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "ScanDrawable"

    const-string v2, "initBounds bounds is null"

    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    iget-object v2, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->o:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e3851ec    # 0.18f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->p:I

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb851ec    # 0.36f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->q:I

    .line 22
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 24
    iget v1, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->w:F

    const/4 v2, 0x0

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    mul-float v1, v1, v1

    div-float/2addr v3, v1

    .line 25
    :goto_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    float-to-int v8, v3

    .line 26
    new-instance v1, Lcom/huawei/hms/scankit/p/se;

    const-wide/16 v2, 0x1f4

    invoke-direct {v1, v8, v2, v3}, Lcom/huawei/hms/scankit/p/se;-><init>(IJ)V

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/scankit/p/se;->a(FF)Lcom/huawei/hms/scankit/p/se;

    move-result-object v9

    new-instance v16, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v16 .. v16}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x64

    invoke-virtual/range {v9 .. v16}, Lcom/huawei/hms/scankit/p/se;->a(IIJJLandroid/view/animation/Interpolator;)Lcom/huawei/hms/scankit/p/se;

    move-result-object v17

    new-instance v24, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v18, -0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x190

    const-wide/16 v22, 0x1f4

    invoke-virtual/range {v17 .. v24}, Lcom/huawei/hms/scankit/p/se;->a(IIJJLandroid/view/animation/Interpolator;)Lcom/huawei/hms/scankit/p/se;

    move-result-object v6

    .line 27
    new-instance v1, Lcom/huawei/hms/scankit/p/re;

    iget v2, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->w:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v9, v2, v3

    sget-object v10, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a:[I

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/huawei/hms/scankit/p/re;-><init>(Lcom/huawei/hms/scankit/p/se;Landroid/graphics/Rect;IF[I)V

    iput-object v1, v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->v:Lcom/huawei/hms/scankit/p/re;

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F
    .locals 0

    .line 4
    iput p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->r:F

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->o:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->v:Lcom/huawei/hms/scankit/p/re;

    if-nez v0, :cond_0

    const-string p1, "ScanDrawable"

    const-string v0, "drawParticle failed, mParticle is null"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/scankit/p/re;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->x:Z

    return p1
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    return p0
.end method

.method private d()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f()V

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e()V

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->A:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 5
    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->x:Z

    return p0
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/hms/scankit/drawable/d;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/drawable/d;-><init>(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/hms/scankit/drawable/b;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/drawable/b;-><init>(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/huawei/hms/scankit/drawable/c;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/drawable/c;-><init>(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    iget v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->q:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    mul-float v3, v3, v4

    mul-float v3, v3, v1

    float-to-int v1, v3

    sub-int v1, v0, v1

    .line 4
    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iget v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->q:I

    int-to-float v1, v1

    iget v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    sub-int v1, v0, v1

    .line 6
    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->n:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    iget v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->q:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    mul-float v3, v3, v4

    mul-float v3, v3, v1

    float-to-int v1, v3

    add-int/2addr v1, v0

    .line 8
    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->u:I

    iget v1, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->q:I

    int-to-float v1, v1

    iget v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->t:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 10
    iget-object v3, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->n:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->n:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Landroid/graphics/Canvas;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const-string p1, "ScanDrawable"

    const-string v0, "animator is not running or canvas is null."

    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/content/res/Resources;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_0
    const-string p1, "ScanDrawable"

    const-string p2, "resources, xmlPullParser or attributeSet is null when inflating drawable"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "ScanDrawable"

    const-string v0, "on bounds change: bounds is null!"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->isRunning()Z

    move-result v0

    const-string v1, "ScanDrawable"

    if-eqz v0, :cond_0

    const-string v0, "start failed, animator is running"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->s:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->x:Z

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const-string v0, "start scan animator success"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->isRunning()Z

    move-result v0

    const-string v1, "ScanDrawable"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->v:Lcom/huawei/hms/scankit/p/re;

    const-string v0, "stop scan animator success"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "stop failed, animator is not running"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
