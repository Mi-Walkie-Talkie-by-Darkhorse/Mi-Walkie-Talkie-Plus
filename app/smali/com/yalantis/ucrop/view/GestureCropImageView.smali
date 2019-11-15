.class public Lcom/yalantis/ucrop/view/GestureCropImageView;
.super Lcom/yalantis/ucrop/view/CropImageView;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/GestureCropImageView$b;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$a;,
        Lcom/yalantis/ucrop/view/GestureCropImageView$c;
    }
.end annotation


# instance fields
.field private i:Landroid/view/ScaleGestureDetector;

.field private j:Lcom/yalantis/ucrop/c/h;

.field private k:Landroid/view/GestureDetector;

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->n:Z

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->o:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->n:Z

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->o:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->p:I

    return-void
.end method

.method static synthetic a(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->l:F

    return v0
.end method

.method static synthetic b(Lcom/yalantis/ucrop/view/GestureCropImageView;)F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->m:F

    return v0
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$a;

    invoke-direct {v2, p0, v4}, Lcom/yalantis/ucrop/view/GestureCropImageView$a;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->k:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/yalantis/ucrop/view/GestureCropImageView$c;

    invoke-direct {v2, p0, v4}, Lcom/yalantis/ucrop/view/GestureCropImageView$c;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->i:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/yalantis/ucrop/c/h;

    new-instance v1, Lcom/yalantis/ucrop/view/GestureCropImageView$b;

    invoke-direct {v1, p0, v4}, Lcom/yalantis/ucrop/view/GestureCropImageView$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Lcom/yalantis/ucrop/view/GestureCropImageView$1;)V

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/c/h;-><init>(Lcom/yalantis/ucrop/c/h$a;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->j:Lcom/yalantis/ucrop/c/h;

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 0

    invoke-super {p0}, Lcom/yalantis/ucrop/view/CropImageView;->d()V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->e()V

    return-void
.end method

.method public getDoubleTapScaleSteps()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->p:I

    return v0
.end method

.method protected getDoubleTapTargetScale()F
    .locals 6

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->p:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->l:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->m:F

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->i:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->j:Lcom/yalantis/ucrop/c/h;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/c/h;->a(Landroid/view/MotionEvent;)Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    :cond_4
    return v2
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->p:I

    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->n:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView;->o:Z

    return-void
.end method
