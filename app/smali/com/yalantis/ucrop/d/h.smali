.class public Lcom/yalantis/ucrop/d/h;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/d/h$a;,
        Lcom/yalantis/ucrop/d/h$b;
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

.field private i:Lcom/yalantis/ucrop/d/h$a;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/d/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/d/h;->i:Lcom/yalantis/ucrop/d/h$a;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/yalantis/ucrop/d/h;->e:I

    .line 4
    iput p1, p0, Lcom/yalantis/ucrop/d/h;->f:I

    return-void
.end method

.method private a(FFFFFFFF)F
    .locals 2

    sub-float/2addr p2, p4

    float-to-double v0, p2

    sub-float/2addr p1, p3

    float-to-double p1, p1

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p8

    float-to-double p2, p6

    sub-float/2addr p5, p7

    float-to-double p4, p5

    .line 2
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    double-to-float p2, p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/yalantis/ucrop/d/h;->b(FF)F

    move-result p1

    return p1
.end method

.method private b(FF)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p2, v0

    rem-float/2addr p1, v0

    sub-float/2addr p2, p1

    .line 1
    iput p2, p0, Lcom/yalantis/ucrop/d/h;->g:F

    const/high16 p1, -0x3ccc0000    # -180.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    add-float/2addr p2, v0

    .line 2
    iput p2, p0, Lcom/yalantis/ucrop/d/h;->g:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    sub-float/2addr p2, v0

    .line 3
    iput p2, p0, Lcom/yalantis/ucrop/d/h;->g:F

    .line 4
    :cond_1
    :goto_0
    iget p1, p0, Lcom/yalantis/ucrop/d/h;->g:F

    return p1
.end method


# virtual methods
.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/d/h;->g:F

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v9, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_6

    const/4 v4, -0x1

    if-eq v1, v10, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iput v4, v9, Lcom/yalantis/ucrop/d/h;->f:I

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/d/h;->a:F

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/d/h;->b:F

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, v9, Lcom/yalantis/ucrop/d/h;->f:I

    .line 6
    iput v3, v9, Lcom/yalantis/ucrop/d/h;->g:F

    .line 7
    iput-boolean v10, v9, Lcom/yalantis/ucrop/d/h;->h:Z

    goto/16 :goto_1

    .line 8
    :cond_2
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->e:I

    if-eq v1, v4, :cond_7

    iget v1, v9, Lcom/yalantis/ucrop/d/h;->f:I

    if-eq v1, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget v4, v9, Lcom/yalantis/ucrop/d/h;->f:I

    if-le v1, v4, :cond_7

    .line 9
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->e:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 10
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->e:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 12
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->f:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 13
    iget-boolean v0, v9, Lcom/yalantis/ucrop/d/h;->h:Z

    if-eqz v0, :cond_3

    .line 14
    iput v3, v9, Lcom/yalantis/ucrop/d/h;->g:F

    .line 15
    iput-boolean v2, v9, Lcom/yalantis/ucrop/d/h;->h:Z

    goto :goto_0

    .line 16
    :cond_3
    iget v1, v9, Lcom/yalantis/ucrop/d/h;->a:F

    iget v2, v9, Lcom/yalantis/ucrop/d/h;->b:F

    iget v3, v9, Lcom/yalantis/ucrop/d/h;->c:F

    iget v4, v9, Lcom/yalantis/ucrop/d/h;->d:F

    move-object v0, p0

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/yalantis/ucrop/d/h;->a(FFFFFFFF)F

    .line 17
    :goto_0
    iget-object v0, v9, Lcom/yalantis/ucrop/d/h;->i:Lcom/yalantis/ucrop/d/h$a;

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {v0, p0}, Lcom/yalantis/ucrop/d/h$a;->a(Lcom/yalantis/ucrop/d/h;)Z

    .line 19
    :cond_4
    iput v13, v9, Lcom/yalantis/ucrop/d/h;->a:F

    .line 20
    iput v14, v9, Lcom/yalantis/ucrop/d/h;->b:F

    .line 21
    iput v11, v9, Lcom/yalantis/ucrop/d/h;->c:F

    .line 22
    iput v12, v9, Lcom/yalantis/ucrop/d/h;->d:F

    goto :goto_1

    .line 23
    :cond_5
    iput v4, v9, Lcom/yalantis/ucrop/d/h;->e:I

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/d/h;->c:F

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v9, Lcom/yalantis/ucrop/d/h;->d:F

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, v9, Lcom/yalantis/ucrop/d/h;->e:I

    .line 27
    iput v3, v9, Lcom/yalantis/ucrop/d/h;->g:F

    .line 28
    iput-boolean v10, v9, Lcom/yalantis/ucrop/d/h;->h:Z

    :cond_7
    :goto_1
    return v10
.end method
