.class public Landroidx/constraintlayout/motion/widget/n;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field private A:[Landroidx/constraintlayout/motion/widget/l;

.field private B:I

.field a:Landroid/view/View;

.field b:I

.field c:Ljava/lang/String;

.field private d:I

.field private e:Landroidx/constraintlayout/motion/widget/p;

.field private f:Landroidx/constraintlayout/motion/widget/p;

.field private g:Landroidx/constraintlayout/motion/widget/m;

.field private h:Landroidx/constraintlayout/motion/widget/m;

.field private i:[La/c/a/a/b;

.field private j:La/c/a/a/b;

.field k:F

.field l:F

.field m:F

.field private n:[I

.field private o:[D

.field private p:[D

.field private q:[Ljava/lang/String;

.field private r:[I

.field private s:I

.field private t:[F

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private v:[F

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/s;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/r;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->d:I

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/p;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/p;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/p;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/p;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    .line 5
    new-instance v0, Landroidx/constraintlayout/motion/widget/m;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/m;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    .line 6
    new-instance v0, Landroidx/constraintlayout/motion/widget/m;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/m;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->k:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->m:F

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->s:I

    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->t:[F

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    .line 15
    sget v0, Landroidx/constraintlayout/motion/widget/c;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->B:I

    .line 16
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/n;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 197
    aput v1, p2, v2

    goto :goto_0

    .line 198
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/n;->m:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_2

    .line 199
    iget v3, p0, Landroidx/constraintlayout/motion/widget/n;->l:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    const/4 p1, 0x0

    .line 200
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/n;->l:F

    cmpl-float v4, p1, v3

    if-lez v4, :cond_2

    float-to-double v7, p1

    cmpg-double v4, v7, v5

    if-gez v4, :cond_2

    sub-float/2addr p1, v3

    .line 201
    iget v3, p0, Landroidx/constraintlayout/motion/widget/n;->m:F

    mul-float p1, p1, v3

    .line 202
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 203
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/p;

    .line 204
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    if-eqz v7, :cond_3

    .line 205
    iget v8, v6, Landroidx/constraintlayout/motion/widget/p;->c:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    .line 206
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 207
    iget v4, v6, Landroidx/constraintlayout/motion/widget/p;->c:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 208
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 209
    invoke-virtual {v3, v4, v5}, La/c/a/a/c;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    .line 210
    invoke-virtual {v3, v4, v5}, La/c/a/a/c;->b(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_7
    return p1
.end method

.method private a(Landroidx/constraintlayout/motion/widget/p;)V
    .locals 3

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeyPath positon \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/constraintlayout/motion/widget/p;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Landroidx/constraintlayout/motion/widget/p;)V
    .locals 4

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/n;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/n;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/p;->a(FFFF)V

    return-void
.end method

.method private d()F
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    const-wide/16 v4, 0x0

    move-wide v8, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x64

    if-ge v10, v12, :cond_6

    int-to-float v12, v10

    mul-float v12, v12, v2

    float-to-double v13, v12

    .line 1
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 2
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Landroidx/constraintlayout/motion/widget/p;

    .line 3
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    move/from16 v19, v2

    if-eqz v7, :cond_1

    .line 4
    iget v2, v6, Landroidx/constraintlayout/motion/widget/p;->c:F

    cmpg-float v20, v2, v12

    if-gez v20, :cond_0

    move/from16 v17, v2

    move-object v15, v7

    goto :goto_2

    .line 5
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget v2, v6, Landroidx/constraintlayout/motion/widget/p;->c:F

    move/from16 v16, v2

    :cond_1
    :goto_2
    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v2

    if-eqz v15, :cond_4

    .line 7
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_3
    sub-float v12, v12, v17

    sub-float v16, v16, v17

    div-float v12, v12, v16

    float-to-double v2, v12

    .line 8
    invoke-virtual {v15, v2, v3}, La/c/a/a/c;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    add-float v2, v2, v17

    float-to-double v13, v2

    .line 9
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v2, v13, v14, v6}, La/c/a/a/b;->a(D[D)V

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v2, v6, v7, v1, v3}, Landroidx/constraintlayout/motion/widget/p;->a([I[D[FI)V

    const/4 v2, 0x1

    if-lez v10, :cond_5

    float-to-double v6, v11

    .line 11
    aget v11, v1, v2

    float-to-double v11, v11

    sub-double/2addr v8, v11

    aget v11, v1, v3

    float-to-double v11, v11

    sub-double/2addr v4, v11

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    double-to-float v11, v6

    .line 12
    :cond_5
    aget v4, v1, v3

    float-to-double v4, v4

    .line 13
    aget v2, v1, v2

    float-to-double v8, v2

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v19

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    return v11
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/p;->b:I

    .line 326
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/p;

    .line 327
    iget v2, v2, Landroidx/constraintlayout/motion/widget/p;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/p;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method a([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La/c/a/a/b;->a()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 28
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/p;

    add-int/lit8 v5, v3, 0x1

    .line 29
    iget v4, v4, Landroidx/constraintlayout/motion/widget/p;->l:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 30
    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v3, v4, v5, v6}, La/c/a/a/b;->a(D[D)V

    .line 32
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/p;->a([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 33
    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method a(I)Landroidx/constraintlayout/motion/widget/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/p;

    return-object p1
.end method

.method a(FFF[F)V
    .locals 11

    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/n;->a(F[F)F

    move-result p1

    .line 259
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 260
    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {v0, v2, v3, p1}, La/c/a/a/b;->b(D[D)V

    .line 261
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object p1, p1, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {p1, v2, v3, v0}, La/c/a/a/b;->a(D[D)V

    .line 262
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    aget p1, p1, v1

    .line 263
    :goto_0
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    array-length v0, v9

    if-ge v1, v0, :cond_0

    .line 264
    aget-wide v4, v9, v1

    float-to-double v6, p1

    mul-double v4, v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    if-eqz p1, :cond_2

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    array-length v1, v0

    if-lez v1, :cond_1

    .line 267
    invoke-virtual {p1, v2, v3, v0}, La/c/a/a/b;->a(D[D)V

    .line 268
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {p1, v2, v3, v0}, La/c/a/a/b;->b(D[D)V

    .line 269
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/p;->a(FF[F[I[D[D)V

    :cond_1
    return-void

    .line 270
    :cond_2
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/p;->a(FF[F[I[D[D)V

    return-void

    .line 271
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v3, v2, Landroidx/constraintlayout/motion/widget/p;->e:F

    sub-float/2addr v0, v3

    .line 272
    iget v3, p1, Landroidx/constraintlayout/motion/widget/p;->f:F

    iget v4, v2, Landroidx/constraintlayout/motion/widget/p;->f:F

    sub-float/2addr v3, v4

    .line 273
    iget v4, p1, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float/2addr v4, v5

    .line 274
    iget p1, p1, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float/2addr p1, v2

    add-float/2addr v4, v0

    add-float/2addr p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, p2

    mul-float v0, v0, v5

    mul-float v4, v4, p2

    add-float/2addr v0, v4

    .line 275
    aput v0, p4, v1

    sub-float/2addr v2, p3

    mul-float v3, v3, v2

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    const/4 p1, 0x1

    .line 276
    aput v3, p4, p1

    return-void
.end method

.method a(FIIFF[F)V
    .locals 18

    move-object/from16 v0, p0

    .line 277
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/n;->a(F[F)F

    move-result v1

    .line 278
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v3, "translationX"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/r;

    .line 279
    :goto_0
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v6, "translationY"

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/r;

    .line 280
    :goto_1
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v8, "rotation"

    if-nez v7, :cond_2

    move-object v7, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/r;

    .line 281
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v10, "scaleX"

    if-nez v9, :cond_3

    move-object v9, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/r;

    .line 282
    :goto_3
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v12, "scaleY"

    if-nez v11, :cond_4

    move-object v11, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/r;

    .line 283
    :goto_4
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v13, :cond_5

    move-object v3, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/g;

    .line 284
    :goto_5
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v13, :cond_6

    move-object v6, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/g;

    .line 285
    :goto_6
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v13, :cond_7

    move-object v8, v4

    goto :goto_7

    :cond_7
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/g;

    .line 286
    :goto_7
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v13, :cond_8

    move-object v10, v4

    goto :goto_8

    :cond_8
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/g;

    .line 287
    :goto_8
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v13, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/g;

    .line 288
    :goto_9
    new-instance v12, La/c/a/a/h;

    invoke-direct {v12}, La/c/a/a/h;-><init>()V

    .line 289
    invoke-virtual {v12}, La/c/a/a/h;->a()V

    .line 290
    invoke-virtual {v12, v7, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/r;F)V

    .line 291
    invoke-virtual {v12, v2, v5, v1}, La/c/a/a/h;->b(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r;F)V

    .line 292
    invoke-virtual {v12, v9, v11, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r;F)V

    .line 293
    invoke-virtual {v12, v8, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/g;F)V

    .line 294
    invoke-virtual {v12, v3, v6, v1}, La/c/a/a/h;->b(Landroidx/constraintlayout/motion/widget/g;Landroidx/constraintlayout/motion/widget/g;F)V

    .line 295
    invoke-virtual {v12, v10, v4, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/g;Landroidx/constraintlayout/motion/widget/g;F)V

    .line 296
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    if-eqz v13, :cond_b

    .line 297
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    array-length v3, v2

    if-lez v3, :cond_a

    float-to-double v3, v1

    .line 298
    invoke-virtual {v13, v3, v4, v2}, La/c/a/a/b;->a(D[D)V

    .line 299
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {v1, v3, v4, v2}, La/c/a/a/b;->b(D[D)V

    .line 300
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/p;->a(FF[F[I[D[D)V

    :cond_a
    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 301
    invoke-virtual/range {v1 .. v6}, La/c/a/a/h;->a(FFII[F)V

    return-void

    .line 302
    :cond_b
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v14, 0x0

    if-eqz v13, :cond_d

    .line 303
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/n;->a(F[F)F

    move-result v1

    .line 304
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object v2, v2, v14

    float-to-double v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {v2, v3, v4, v1}, La/c/a/a/b;->b(D[D)V

    .line 305
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object v1, v1, v14

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v1, v3, v4, v2}, La/c/a/a/b;->a(D[D)V

    .line 306
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->v:[F

    aget v1, v1, v14

    .line 307
    :goto_a
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    array-length v2, v6

    if-ge v14, v2, :cond_c

    .line 308
    aget-wide v2, v6, v14

    float-to-double v4, v1

    mul-double v2, v2, v4

    aput-wide v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 309
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/p;->a(FF[F[I[D[D)V

    move-object v1, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 310
    invoke-virtual/range {v1 .. v6}, La/c/a/a/h;->a(FFII[F)V

    return-void

    .line 311
    :cond_d
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v15, v13, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v0, v14, Landroidx/constraintlayout/motion/widget/p;->e:F

    sub-float/2addr v15, v0

    .line 312
    iget v0, v13, Landroidx/constraintlayout/motion/widget/p;->f:F

    move-object/from16 v16, v4

    iget v4, v14, Landroidx/constraintlayout/motion/widget/p;->f:F

    sub-float/2addr v0, v4

    .line 313
    iget v4, v13, Landroidx/constraintlayout/motion/widget/p;->g:F

    move-object/from16 v17, v10

    iget v10, v14, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float/2addr v4, v10

    .line 314
    iget v10, v13, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v13, v14, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float/2addr v10, v13

    add-float/2addr v4, v15

    add-float/2addr v10, v0

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, p4

    mul-float v15, v15, v14

    mul-float v4, v4, p4

    add-float/2addr v15, v4

    const/4 v4, 0x0

    .line 315
    aput v15, p6, v4

    sub-float v13, v13, p5

    mul-float v0, v0, v13

    mul-float v10, v10, p5

    add-float/2addr v0, v10

    const/4 v4, 0x1

    .line 316
    aput v0, p6, v4

    .line 317
    invoke-virtual {v12}, La/c/a/a/h;->a()V

    .line 318
    invoke-virtual {v12, v7, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/r;F)V

    .line 319
    invoke-virtual {v12, v2, v5, v1}, La/c/a/a/h;->b(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r;F)V

    .line 320
    invoke-virtual {v12, v9, v11, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/r;Landroidx/constraintlayout/motion/widget/r;F)V

    .line 321
    invoke-virtual {v12, v8, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/g;F)V

    .line 322
    invoke-virtual {v12, v3, v6, v1}, La/c/a/a/h;->b(Landroidx/constraintlayout/motion/widget/g;Landroidx/constraintlayout/motion/widget/g;F)V

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    .line 323
    invoke-virtual {v12, v10, v4, v1}, La/c/a/a/h;->a(Landroidx/constraintlayout/motion/widget/g;Landroidx/constraintlayout/motion/widget/g;F)V

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 324
    invoke-virtual/range {v1 .. v6}, La/c/a/a/h;->a(FFII[F)V

    return-void
.end method

.method a(F[FI)V
    .locals 3

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/n;->a(F[F)F

    move-result p1

    .line 35
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v0, v1, v2, p1}, La/c/a/a/b;->a(D[D)V

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/p;->b([I[D[FI)V

    return-void
.end method

.method public a(IIFJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 42
    const-class v1, D

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 45
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 46
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget v6, v0, Landroidx/constraintlayout/motion/widget/n;->B:I

    sget v7, Landroidx/constraintlayout/motion/widget/c;->e:I

    if-eq v6, v7, :cond_0

    .line 48
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iput v6, v7, Landroidx/constraintlayout/motion/widget/p;->j:I

    .line 49
    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    invoke-virtual {v6, v7, v3}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/motion/widget/m;Ljava/util/HashSet;)V

    .line 50
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 51
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/c;

    .line 52
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/i;

    if-eqz v10, :cond_2

    .line 53
    check-cast v9, Landroidx/constraintlayout/motion/widget/i;

    .line 54
    new-instance v10, Landroidx/constraintlayout/motion/widget/p;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    move-object v11, v10

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v16, v14

    move-object v14, v9

    invoke-direct/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/p;-><init>(IILandroidx/constraintlayout/motion/widget/i;Landroidx/constraintlayout/motion/widget/p;Landroidx/constraintlayout/motion/widget/p;)V

    invoke-direct {v0, v10}, Landroidx/constraintlayout/motion/widget/n;->a(Landroidx/constraintlayout/motion/widget/p;)V

    .line 55
    iget v9, v9, Landroidx/constraintlayout/motion/widget/j;->f:I

    sget v10, Landroidx/constraintlayout/motion/widget/c;->e:I

    if-eq v9, v10, :cond_1

    .line 56
    iput v9, v0, Landroidx/constraintlayout/motion/widget/n;->d:I

    goto :goto_0

    .line 57
    :cond_2
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/f;

    if-eqz v10, :cond_3

    .line 58
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/c;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 59
    :cond_3
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/k;

    if-eqz v10, :cond_4

    .line 60
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/motion/widget/c;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 61
    :cond_4
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/l;

    if-eqz v10, :cond_6

    if-nez v8, :cond_5

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :cond_5
    check-cast v9, Landroidx/constraintlayout/motion/widget/l;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_6
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/c;->b(Ljava/util/HashMap;)V

    .line 65
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/motion/widget/c;->a(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :cond_8
    const/4 v6, 0x0

    if-eqz v8, :cond_9

    new-array v9, v6, [Landroidx/constraintlayout/motion/widget/l;

    .line 66
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/constraintlayout/motion/widget/l;

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->A:[Landroidx/constraintlayout/motion/widget/l;

    .line 67
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    const-string v9, ","

    const-string v10, "CUSTOM,"

    const/4 v11, 0x1

    if-nez v8, :cond_13

    .line 68
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 70
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 71
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 72
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    .line 73
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroidx/constraintlayout/motion/widget/c;

    .line 74
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/HashMap;

    if-nez v11, :cond_b

    :cond_a
    :goto_3
    const/4 v11, 0x1

    goto :goto_2

    .line 75
    :cond_b
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v11, :cond_a

    .line 76
    iget v7, v7, Landroidx/constraintlayout/motion/widget/c;->a:I

    invoke-virtual {v13, v7, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3

    .line 77
    :cond_c
    invoke-static {v12, v13}, Landroidx/constraintlayout/motion/widget/r;->a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/r;

    move-result-object v7

    goto :goto_4

    .line 78
    :cond_d
    invoke-static {v12}, Landroidx/constraintlayout/motion/widget/r;->b(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/r;

    move-result-object v7

    :goto_4
    if-nez v7, :cond_e

    goto :goto_5

    .line 79
    :cond_e
    invoke-virtual {v7, v12}, Landroidx/constraintlayout/motion/widget/r;->a(Ljava/lang/String;)V

    .line 80
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const/4 v11, 0x1

    goto :goto_1

    .line 81
    :cond_f
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    .line 82
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/c;

    .line 83
    instance-of v11, v8, Landroidx/constraintlayout/motion/widget/d;

    if-eqz v11, :cond_10

    .line 84
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/c;->a(Ljava/util/HashMap;)V

    goto :goto_6

    .line 85
    :cond_11
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Landroidx/constraintlayout/motion/widget/m;->a(Ljava/util/HashMap;I)V

    .line 86
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const/16 v11, 0x64

    invoke-virtual {v7, v8, v11}, Landroidx/constraintlayout/motion/widget/m;->a(Ljava/util/HashMap;I)V

    .line 87
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 88
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 89
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    .line 90
    :goto_8
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/r;

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/r;->a(I)V

    goto :goto_7

    .line 91
    :cond_13
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 92
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    if-nez v7, :cond_14

    .line 93
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    .line 94
    :cond_14
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 95
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_9

    .line 96
    :cond_15
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 97
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    .line 99
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/c;

    .line 100
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/c;->d:Ljava/util/HashMap;

    if-nez v14, :cond_17

    goto :goto_a

    .line 101
    :cond_17
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v14, :cond_16

    .line 102
    iget v13, v13, Landroidx/constraintlayout/motion/widget/c;->a:I

    invoke-virtual {v8, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_a

    .line 103
    :cond_18
    invoke-static {v7, v8}, Landroidx/constraintlayout/motion/widget/s;->a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v8

    move-wide/from16 v11, p4

    goto :goto_b

    :cond_19
    move-wide/from16 v11, p4

    .line 104
    invoke-static {v7, v11, v12}, Landroidx/constraintlayout/motion/widget/s;->a(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/s;

    move-result-object v8

    :goto_b
    if-nez v8, :cond_1a

    goto :goto_9

    .line 105
    :cond_1a
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/s;->a(Ljava/lang/String;)V

    .line 106
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 107
    :cond_1b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/c;

    .line 109
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/k;

    if-eqz v8, :cond_1c

    .line 110
    check-cast v7, Landroidx/constraintlayout/motion/widget/k;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/k;->c(Ljava/util/HashMap;)V

    goto :goto_c

    .line 111
    :cond_1d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 112
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 113
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_e

    :cond_1e
    const/4 v8, 0x0

    .line 114
    :goto_e
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/s;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/s;->a(I)V

    goto :goto_d

    .line 115
    :cond_1f
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    add-int/2addr v2, v5

    new-array v7, v2, [Landroidx/constraintlayout/motion/widget/p;

    .line 116
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    aput-object v8, v7, v6

    add-int/lit8 v8, v2, -0x1

    .line 117
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    aput-object v9, v7, v8

    .line 118
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_20

    iget v8, v0, Landroidx/constraintlayout/motion/widget/n;->d:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_20

    .line 119
    iput v6, v0, Landroidx/constraintlayout/motion/widget/n;->d:I

    .line 120
    :cond_20
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/p;

    add-int/lit8 v12, v9, 0x1

    .line 121
    aput-object v11, v7, v9

    move v9, v12

    goto :goto_f

    :cond_21
    const/16 v8, 0x12

    .line 122
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 123
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_22
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 124
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 125
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    .line 126
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    new-array v3, v6, [Ljava/lang/String;

    .line 127
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    .line 128
    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->r:[I

    const/4 v3, 0x0

    .line 129
    :goto_11
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    array-length v10, v9

    if-ge v3, v10, :cond_26

    .line 130
    aget-object v9, v9, v3

    .line 131
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->r:[I

    aput v6, v10, v3

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v2, :cond_25

    .line 132
    aget-object v11, v7, v10

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 133
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->r:[I

    aget v12, v11, v3

    aget-object v10, v7, v10

    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v9

    add-int/2addr v12, v9

    aput v12, v11, v3

    goto :goto_13

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_25
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 134
    :cond_26
    aget-object v3, v7, v6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->j:I

    sget v9, Landroidx/constraintlayout/motion/widget/c;->e:I

    if-eq v3, v9, :cond_27

    const/4 v3, 0x1

    goto :goto_14

    :cond_27
    const/4 v3, 0x0

    .line 135
    :goto_14
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    array-length v9, v9

    add-int/2addr v8, v9

    new-array v9, v8, [Z

    const/4 v10, 0x1

    :goto_15
    if-ge v10, v2, :cond_28

    .line 136
    aget-object v11, v7, v10

    add-int/lit8 v12, v10, -0x1

    aget-object v12, v7, v12

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    invoke-virtual {v11, v12, v9, v13, v3}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/motion/widget/p;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_28
    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_16
    if-ge v3, v8, :cond_2a

    .line 137
    aget-boolean v11, v9, v3

    if-eqz v11, :cond_29

    add-int/lit8 v10, v10, 0x1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 138
    :cond_2a
    new-array v3, v10, [I

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    .line 139
    array-length v10, v3

    new-array v10, v10, [D

    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    .line 140
    array-length v3, v3

    new-array v3, v3, [D

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_17
    if-ge v3, v8, :cond_2c

    .line 141
    aget-boolean v11, v9, v3

    if-eqz v11, :cond_2b

    .line 142
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    add-int/lit8 v12, v10, 0x1

    aput v3, v11, v10

    move v10, v12

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 143
    :cond_2c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    array-length v3, v3

    new-array v8, v5, [I

    const/4 v9, 0x1

    aput v3, v8, v9

    aput v2, v8, v6

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 144
    new-array v8, v2, [D

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v2, :cond_2d

    .line 145
    aget-object v10, v7, v9

    aget-object v11, v3, v9

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    invoke-virtual {v10, v11, v12}, Landroidx/constraintlayout/motion/widget/p;->a([D[I)V

    .line 146
    aget-object v10, v7, v9

    iget v10, v10, Landroidx/constraintlayout/motion/widget/p;->c:F

    float-to-double v10, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_2d
    const/4 v9, 0x0

    .line 147
    :goto_19
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    array-length v11, v10

    if-ge v9, v11, :cond_2f

    .line 148
    aget v10, v10, v9

    .line 149
    sget-object v11, Landroidx/constraintlayout/motion/widget/p;->o:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_2e

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroidx/constraintlayout/motion/widget/p;->o:[Ljava/lang/String;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    aget v12, v12, v9

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v2, :cond_2e

    .line 151
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v11

    aget-wide v13, v10, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 152
    :cond_2f
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-array v9, v9, [La/c/a/a/b;

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v9, 0x0

    .line 153
    :goto_1b
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_33

    .line 154
    aget-object v10, v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1c
    if-ge v11, v2, :cond_32

    .line 155
    aget-object v15, v7, v11

    invoke-virtual {v15, v10}, Landroidx/constraintlayout/motion/widget/p;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_31

    if-nez v14, :cond_30

    .line 156
    new-array v12, v2, [D

    .line 157
    aget-object v14, v7, v11

    invoke-virtual {v14, v10}, Landroidx/constraintlayout/motion/widget/p;->a(Ljava/lang/String;)I

    move-result v14

    new-array v15, v5, [I

    const/16 v16, 0x1

    aput v14, v15, v16

    aput v2, v15, v6

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    .line 158
    :cond_30
    aget-object v15, v7, v11

    iget v15, v15, Landroidx/constraintlayout/motion/widget/p;->c:F

    float-to-double v5, v15

    aput-wide v5, v12, v13

    .line 159
    aget-object v5, v7, v11

    aget-object v6, v14, v13

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v6, v15}, Landroidx/constraintlayout/motion/widget/p;->a(Ljava/lang/String;[DI)I

    add-int/lit8 v13, v13, 0x1

    :cond_31
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_1c

    .line 160
    :cond_32
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    .line 161
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 162
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    add-int/lit8 v9, v9, 0x1

    iget v11, v0, Landroidx/constraintlayout/motion/widget/n;->d:I

    invoke-static {v11, v5, v6}, La/c/a/a/b;->a(I[D[[D)La/c/a/a/b;

    move-result-object v5

    aput-object v5, v10, v9

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_1b

    .line 163
    :cond_33
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    iget v6, v0, Landroidx/constraintlayout/motion/widget/n;->d:I

    invoke-static {v6, v8, v3}, La/c/a/a/b;->a(I[D[[D)La/c/a/a/b;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 164
    aget-object v3, v7, v6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->j:I

    sget v5, Landroidx/constraintlayout/motion/widget/c;->e:I

    if-eq v3, v5, :cond_35

    .line 165
    new-array v3, v2, [I

    .line 166
    new-array v5, v2, [D

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x1

    aput v8, v9, v10

    aput v2, v9, v6

    .line 167
    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v2, :cond_34

    .line 168
    aget-object v6, v7, v15

    iget v6, v6, Landroidx/constraintlayout/motion/widget/p;->j:I

    aput v6, v3, v15

    .line 169
    aget-object v6, v7, v15

    iget v6, v6, Landroidx/constraintlayout/motion/widget/p;->c:F

    float-to-double v8, v6

    aput-wide v8, v5, v15

    .line 170
    aget-object v6, v1, v15

    aget-object v8, v7, v15

    iget v8, v8, Landroidx/constraintlayout/motion/widget/p;->e:F

    float-to-double v8, v8

    const/4 v10, 0x0

    aput-wide v8, v6, v10

    .line 171
    aget-object v6, v1, v15

    aget-object v8, v7, v15

    iget v8, v8, Landroidx/constraintlayout/motion/widget/p;->f:F

    float-to-double v8, v8

    const/4 v11, 0x1

    aput-wide v8, v6, v11

    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    .line 172
    :cond_34
    invoke-static {v3, v5, v1}, La/c/a/a/b;->a([I[D[[D)La/c/a/a/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    :cond_35
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    .line 174
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    .line 175
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/g;->b(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/g;

    move-result-object v4

    if-nez v4, :cond_36

    goto :goto_1e

    .line 177
    :cond_36
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/g;->a()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 178
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 179
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/n;->d()F

    move-result v1

    .line 180
    :cond_37
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/g;->a(Ljava/lang/String;)V

    .line 181
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 182
    :cond_38
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/c;

    .line 183
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/f;

    if-eqz v4, :cond_39

    .line 184
    check-cast v3, Landroidx/constraintlayout/motion/widget/f;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/f;->c(Ljava/util/HashMap;)V

    goto :goto_1f

    .line 185
    :cond_3a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/g;

    .line 186
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/motion/widget/g;->c(F)V

    goto :goto_20

    :cond_3b
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 5

    .line 187
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 188
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/p;->a(FFFF)V

    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/m;->b(Landroid/view/View;)V

    return-void
.end method

.method a(Landroidx/constraintlayout/motion/widget/c;)V
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/b;)V
    .locals 5

    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 192
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 193
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/n;->b(Landroidx/constraintlayout/motion/widget/p;)V

    .line 194
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/p;->a(FFFF)V

    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/n;->b:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/b;->c(I)Landroidx/constraintlayout/widget/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/widget/b$a;)V

    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/n;->b:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/b;I)V

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/c;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method a([FI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/r;

    .line 3
    :goto_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/r;

    .line 4
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/g;

    .line 5
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/g;

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_10

    int-to-float v11, v10

    mul-float v11, v11, v3

    .line 6
    iget v12, v0, Landroidx/constraintlayout/motion/widget/n;->m:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v4

    if-eqz v12, :cond_5

    .line 7
    iget v12, v0, Landroidx/constraintlayout/motion/widget/n;->l:F

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    const/4 v11, 0x0

    .line 8
    :cond_4
    iget v12, v0, Landroidx/constraintlayout/motion/widget/n;->l:F

    cmpl-float v14, v11, v12

    if-lez v14, :cond_5

    float-to-double v14, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v14, v16

    if-gez v18, :cond_5

    sub-float/2addr v11, v12

    .line 9
    iget v12, v0, Landroidx/constraintlayout/motion/widget/n;->m:F

    mul-float v11, v11, v12

    :cond_5
    float-to-double v14, v11

    .line 10
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 11
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroidx/constraintlayout/motion/widget/p;

    .line 12
    iget-object v2, v9, Landroidx/constraintlayout/motion/widget/p;->a:La/c/a/a/c;

    if-eqz v2, :cond_7

    move-object/from16 v18, v2

    .line 13
    iget v2, v9, Landroidx/constraintlayout/motion/widget/p;->c:F

    cmpg-float v19, v2, v11

    if-gez v19, :cond_6

    move v13, v2

    move-object/from16 v12, v18

    goto :goto_6

    .line 14
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    iget v2, v9, Landroidx/constraintlayout/motion/widget/p;->c:F

    move/from16 v16, v2

    :cond_7
    :goto_6
    move/from16 v2, p2

    goto :goto_5

    :cond_8
    if-eqz v12, :cond_a

    .line 16
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_9
    sub-float v2, v11, v13

    sub-float v16, v16, v13

    div-float v2, v2, v16

    float-to-double v14, v2

    .line 17
    invoke-virtual {v12, v14, v15}, La/c/a/a/c;->a(D)D

    move-result-wide v14

    double-to-float v2, v14

    mul-float v2, v2, v16

    add-float/2addr v2, v13

    float-to-double v14, v2

    .line 18
    :cond_a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v2, v14, v15, v9}, La/c/a/a/b;->a(D[D)V

    .line 19
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    if-eqz v2, :cond_b

    .line 20
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    array-length v12, v9

    if-lez v12, :cond_b

    .line 21
    invoke-virtual {v2, v14, v15, v9}, La/c/a/a/b;->a(D[D)V

    .line 22
    :cond_b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    mul-int/lit8 v13, v10, 0x2

    invoke-virtual {v2, v9, v12, v1, v13}, Landroidx/constraintlayout/motion/widget/p;->a([I[D[FI)V

    if-eqz v6, :cond_c

    .line 23
    aget v2, v1, v13

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/g;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_d

    .line 24
    aget v2, v1, v13

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/r;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    :cond_d
    :goto_7
    if-eqz v7, :cond_e

    add-int/lit8 v13, v13, 0x1

    .line 25
    aget v2, v1, v13

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/g;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    goto :goto_8

    :cond_e
    if-eqz v8, :cond_f

    add-int/lit8 v13, v13, 0x1

    .line 26
    aget v2, v1, v13

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/r;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    :cond_f
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/e;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 211
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/n;->a(F[F)F

    move-result v12

    .line 212
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/r;

    .line 214
    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/motion/widget/r;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->x:Ljava/util/HashMap;

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    .line 216
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/s;

    .line 217
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/s$d;

    if-eqz v2, :cond_1

    .line 218
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/motion/widget/s$d;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 219
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/s;->a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/e;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move v14, v9

    goto :goto_2

    :cond_3
    move-object v8, v1

    const/4 v14, 0x0

    .line 220
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    const/4 v15, 0x1

    if-eqz v1, :cond_c

    .line 221
    aget-object v1, v1, v13

    float-to-double v9, v12

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    invoke-virtual {v1, v9, v10, v2}, La/c/a/a/b;->a(D[D)V

    .line 222
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    aget-object v1, v1, v13

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {v1, v9, v10, v2}, La/c/a/a/b;->b(D[D)V

    .line 223
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    if-eqz v1, :cond_4

    .line 224
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    array-length v3, v2

    if-lez v3, :cond_4

    .line 225
    invoke-virtual {v1, v9, v10, v2}, La/c/a/a/b;->a(D[D)V

    .line 226
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->j:La/c/a/a/b;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    invoke-virtual {v1, v9, v10, v2}, La/c/a/a/b;->b(D[D)V

    .line 227
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->n:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/n;->o:[D

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/p;->a(Landroid/view/View;[I[D[D[D)V

    .line 228
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 229
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/r;

    .line 230
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/r$d;

    if-eqz v2, :cond_5

    .line 231
    check-cast v1, Landroidx/constraintlayout/motion/widget/r$d;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/r$d;->a(Landroid/view/View;FDD)V

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    .line 232
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    aget-wide v16, v1, v13

    aget-wide v18, v1, v15

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v12

    move-wide/from16 v5, p3

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/s$d;->a(Landroid/view/View;Landroidx/constraintlayout/motion/widget/e;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    goto :goto_4

    :cond_7
    move-wide/from16 v20, v9

    :goto_4
    const/4 v1, 0x1

    .line 233
    :goto_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->i:[La/c/a/a/b;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 234
    aget-object v2, v2, v1

    .line 235
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->t:[F

    move-wide/from16 v4, v20

    invoke-virtual {v2, v4, v5, v3}, La/c/a/a/b;->a(D[F)V

    .line 236
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/p;->k:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->q:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->t:[F

    invoke-virtual {v2, v11, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 237
    :cond_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/m;->b:I

    if-nez v2, :cond_b

    const/4 v2, 0x0

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_9

    .line 238
    iget v1, v1, Landroidx/constraintlayout/motion/widget/m;->c:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_a

    .line 239
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/m;->c:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 240
    :cond_a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->h:Landroidx/constraintlayout/motion/widget/m;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/m;->c:I

    iget v1, v1, Landroidx/constraintlayout/motion/widget/m;->c:I

    if-eq v2, v1, :cond_b

    .line 241
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_b
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->A:[Landroidx/constraintlayout/motion/widget/l;

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 243
    :goto_7
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->A:[Landroidx/constraintlayout/motion/widget/l;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 244
    aget-object v2, v2, v1

    invoke-virtual {v2, v12, v11}, Landroidx/constraintlayout/motion/widget/l;->a(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 245
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/p;->e:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/p;->e:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v12

    add-float/2addr v2, v4

    .line 246
    iget v4, v1, Landroidx/constraintlayout/motion/widget/p;->f:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/p;->f:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v12

    add-float/2addr v4, v5

    .line 247
    iget v5, v1, Landroidx/constraintlayout/motion/widget/p;->g:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/p;->g:F

    sub-float v7, v6, v5

    mul-float v7, v7, v12

    add-float/2addr v7, v5

    .line 248
    iget v1, v1, Landroidx/constraintlayout/motion/widget/p;->h:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/p;->h:F

    sub-float v8, v3, v1

    mul-float v8, v8, v12

    add-float/2addr v8, v1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v10, v2

    add-float/2addr v4, v9

    float-to-int v9, v4

    add-float/2addr v2, v7

    float-to-int v2, v2

    add-float/2addr v4, v8

    float-to-int v4, v4

    sub-int v7, v2, v10

    sub-int v8, v4, v9

    cmpl-float v5, v6, v5

    if-nez v5, :cond_d

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_e

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    .line 249
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 250
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 251
    invoke-virtual {v11, v3, v1}, Landroid/view/View;->measure(II)V

    .line 252
    :cond_e
    invoke-virtual {v11, v10, v9, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 253
    :cond_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/n;->z:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    .line 254
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/g;

    .line 255
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/g$f;

    if-eqz v2, :cond_10

    .line 256
    check-cast v1, Landroidx/constraintlayout/motion/widget/g$f;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/n;->p:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/g$f;->a(Landroid/view/View;FDD)V

    goto :goto_8

    .line 257
    :cond_10
    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/motion/widget/g;->a(Landroid/view/View;F)V

    goto :goto_8

    :cond_11
    return v14
.end method

.method b()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/p;->e:F

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/n;->B:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->b:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/n;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/b;)V
    .locals 5

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->c:F

    .line 10
    iput v1, v0, Landroidx/constraintlayout/motion/widget/p;->d:F

    .line 11
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/n;->b(Landroidx/constraintlayout/motion/widget/p;)V

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/p;->a(FFFF)V

    .line 13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/n;->b:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/b;->c(I)Landroidx/constraintlayout/widget/b$a;

    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/p;->a(Landroidx/constraintlayout/widget/b$a;)V

    .line 15
    iget-object v0, v0, Landroidx/constraintlayout/widget/b$a;->c:Landroidx/constraintlayout/widget/b$c;

    iget v0, v0, Landroidx/constraintlayout/widget/b$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/n;->k:F

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->g:Landroidx/constraintlayout/motion/widget/m;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/n;->b:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/m;->a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/b;I)V

    return-void
.end method

.method c()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/p;->f:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/p;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/n;->e:Landroidx/constraintlayout/motion/widget/p;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/p;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/p;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/n;->f:Landroidx/constraintlayout/motion/widget/p;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/p;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
