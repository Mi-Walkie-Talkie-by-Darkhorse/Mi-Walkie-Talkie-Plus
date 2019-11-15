.class Lcom/yalantis/ucrop/view/CropImageView$a;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yalantis/ucrop/view/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private final c:J

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->a:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->c:J

    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->d:F

    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->e:F

    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->f:F

    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->g:F

    iput p8, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->h:F

    iput p9, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->i:F

    iput-boolean p10, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->j:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->c:J

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float v1, v2

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->f:F

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    long-to-float v3, v4

    invoke-static {v1, v8, v2, v3}, Lcom/yalantis/ucrop/c/b;->a(FFFF)F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->g:F

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    long-to-float v4, v4

    invoke-static {v1, v8, v3, v4}, Lcom/yalantis/ucrop/c/b;->a(FFFF)F

    move-result v3

    iget v4, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->i:F

    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    long-to-float v5, v6

    invoke-static {v1, v8, v4, v5}, Lcom/yalantis/ucrop/c/b;->b(FFFF)F

    move-result v4

    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->b:J

    long-to-float v5, v6

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/yalantis/ucrop/view/CropImageView;->b:[F

    const/4 v5, 0x0

    aget v1, v1, v5

    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->d:F

    sub-float/2addr v1, v5

    sub-float v1, v2, v1

    iget-object v2, v0, Lcom/yalantis/ucrop/view/CropImageView;->b:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    iget v5, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->e:F

    sub-float/2addr v2, v5

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Lcom/yalantis/ucrop/view/CropImageView;->a(FF)V

    iget-boolean v1, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->j:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView$a;->h:F

    add-float/2addr v1, v4

    invoke-static {v0}, Lcom/yalantis/ucrop/view/CropImageView;->a(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-static {v0}, Lcom/yalantis/ucrop/view/CropImageView;->a(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/CropImageView;->b(FFF)V

    :cond_2
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
