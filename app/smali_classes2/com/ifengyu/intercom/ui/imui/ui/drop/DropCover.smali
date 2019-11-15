.class public Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;
.super Landroid/view/View;
.source "DropCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field private final a:F

.field private final b:F

.field private final c:I

.field private e:Landroid/view/View;

.field private f:Landroid/graphics/Path;

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Ljava/lang/String;

.field private s:[Landroid/graphics/Bitmap;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->b:F

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->m:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->p:Z

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->b()V

    return-void
.end method

.method private a(F)V
    .locals 4

    const/4 v1, 0x1

    const v3, 0x3ecccccd    # 0.4f

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h()Landroid/graphics/Paint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->b(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j()F

    move-result v0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->r:Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    add-float/2addr v0, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->r:Ljava/lang/String;

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    add-float/2addr v0, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->setVisibility(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->y:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;->a(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Z)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(FFFF)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v7, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    iget v7, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v8, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    add-float/2addr v7, v8

    div-float/2addr v7, v9

    iget v8, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v9, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    iget v9, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v10, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    iget v10, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v11, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v11, v11

    mul-float/2addr v1, v11

    sub-float v1, v10, v1

    iget v10, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v11, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    int-to-float v11, v11

    mul-float/2addr v0, v11

    sub-float v0, v10, v0

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v7, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->f:Landroid/graphics/Path;

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k()[I

    move-result-object v2

    array-length v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->u:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->u:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->u:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->w:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->x:I

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->t:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->v:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->u:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->v:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->w:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->x:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->v:I

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->postInvalidateDelayed(J)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->t:Z

    iput v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->v:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->s:[Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(FFFF)D
    .locals 4

    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget v2, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->d:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->p:Z

    :cond_0
    return-wide v0
.end method

.method public a()V
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->q:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Z)V

    :goto_1
    iput v8, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iput v8, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->l:F

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->invalidate()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->b()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c()V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->m:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->t:Z

    goto :goto_2
.end method

.method public a(FF)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->e()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(FFFF)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(F)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->m:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->n:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->o:Z

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->p:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    sget v1, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->b:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->g:I

    aget v1, v0, v3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    aget v0, v0, v4

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->e()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->q:J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->invalidate()V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->y:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->y:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->j:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->h:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->k:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->i:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-direct {v0, v1, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->t:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->c(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method
