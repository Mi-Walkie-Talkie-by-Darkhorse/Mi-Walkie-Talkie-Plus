.class public Lcom/yalantis/ucrop/c/h;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/c/h$a;,
        Lcom/yalantis/ucrop/c/h$b;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Lcom/yalantis/ucrop/c/h$a;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/c/h$a;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yalantis/ucrop/c/h;->i:Lcom/yalantis/ucrop/c/h$a;

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->e:I

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->f:I

    return-void
.end method

.method private a(FF)F
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float v0, p2, v2

    rem-float v1, p1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    return v0

    :cond_1
    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    goto :goto_0
.end method

.method private a(FFFFFFFF)F
    .locals 6

    sub-float v0, p2, p4

    float-to-double v0, v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p6, p8

    float-to-double v2, v1

    sub-float v1, p5, p7

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/c/h;->a(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->g:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->d:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->e:I

    iput v2, p0, Lcom/yalantis/ucrop/c/h;->g:F

    iput-boolean v9, p0, Lcom/yalantis/ucrop/c/h;->h:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/c/h;->f:I

    iput v2, p0, Lcom/yalantis/ucrop/c/h;->g:F

    iput-boolean v9, p0, Lcom/yalantis/ucrop/c/h;->h:Z

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/yalantis/ucrop/c/h;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->f:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/c/h;->f:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v0, p0, Lcom/yalantis/ucrop/c/h;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-boolean v0, p0, Lcom/yalantis/ucrop/c/h;->h:Z

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/yalantis/ucrop/c/h;->g:F

    iput-boolean v3, p0, Lcom/yalantis/ucrop/c/h;->h:Z

    :goto_1
    iget-object v0, p0, Lcom/yalantis/ucrop/c/h;->i:Lcom/yalantis/ucrop/c/h$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/c/h;->i:Lcom/yalantis/ucrop/c/h$a;

    invoke-interface {v0, p0}, Lcom/yalantis/ucrop/c/h$a;->a(Lcom/yalantis/ucrop/c/h;)Z

    :cond_1
    iput v5, p0, Lcom/yalantis/ucrop/c/h;->a:F

    iput v6, p0, Lcom/yalantis/ucrop/c/h;->b:F

    iput v7, p0, Lcom/yalantis/ucrop/c/h;->c:F

    iput v8, p0, Lcom/yalantis/ucrop/c/h;->d:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/yalantis/ucrop/c/h;->a:F

    iget v2, p0, Lcom/yalantis/ucrop/c/h;->b:F

    iget v3, p0, Lcom/yalantis/ucrop/c/h;->c:F

    iget v4, p0, Lcom/yalantis/ucrop/c/h;->d:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/yalantis/ucrop/c/h;->a(FFFFFFFF)F

    goto :goto_1

    :pswitch_4
    iput v1, p0, Lcom/yalantis/ucrop/c/h;->e:I

    goto/16 :goto_0

    :pswitch_5
    iput v1, p0, Lcom/yalantis/ucrop/c/h;->f:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
