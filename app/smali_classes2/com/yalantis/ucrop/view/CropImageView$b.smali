.class Lcom/yalantis/ucrop/view/CropImageView$b;
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
    name = "b"
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


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->c:J

    iput-wide p2, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->b:J

    iput p4, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->d:F

    iput p5, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->e:F

    iput p6, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->f:F

    iput p7, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->g:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/CropImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->b:J

    iget-wide v6, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->c:J

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->e:F

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->b:J

    long-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/yalantis/ucrop/c/b;->b(FFFF)F

    move-result v2

    iget-wide v4, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->b:J

    long-to-float v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->f:F

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView$b;->g:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/CropImageView;->b(FFF)V

    invoke-virtual {v0, p0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    goto :goto_0
.end method
