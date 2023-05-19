.class public Lcom/huawei/hms/scankit/a;
.super Landroid/os/Handler;
.source "CaptureHandler.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/huawei/hms/scankit/B;

.field private final b:Lcom/huawei/hms/scankit/m;

.field private final c:I

.field private d:Lcom/huawei/hms/scankit/a$a;

.field private e:Landroid/content/Context;

.field private final f:Lcom/huawei/hms/scankit/p/Aa;

.field private final g:Lcom/huawei/hms/scankit/ViewfinderView;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/huawei/hms/scankit/A;

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/scankit/ViewfinderView;Lcom/huawei/hms/scankit/B;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/huawei/hms/scankit/p/Aa;Landroid/graphics/Rect;IZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/scankit/ViewfinderView;",
            "Lcom/huawei/hms/scankit/B;",
            "Ljava/util/Collection<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/Aa;",
            "Landroid/graphics/Rect;",
            "IZZ)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p7

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    move-object v0, p2

    .line 2
    iput-object v0, v8, Lcom/huawei/hms/scankit/a;->g:Lcom/huawei/hms/scankit/ViewfinderView;

    move-object v0, p3

    .line 3
    iput-object v0, v8, Lcom/huawei/hms/scankit/a;->a:Lcom/huawei/hms/scankit/B;

    move/from16 v0, p9

    .line 4
    iput v0, v8, Lcom/huawei/hms/scankit/a;->c:I

    move-object v1, p1

    .line 5
    iput-object v1, v8, Lcom/huawei/hms/scankit/a;->e:Landroid/content/Context;

    .line 6
    new-instance v10, Lcom/huawei/hms/scankit/m;

    move-object v0, v10

    move-object/from16 v2, p7

    move-object v3, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/scankit/m;-><init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/huawei/hms/scankit/aiscan/common/A;)V

    iput-object v10, v8, Lcom/huawei/hms/scankit/a;->b:Lcom/huawei/hms/scankit/m;

    move-object/from16 v0, p8

    .line 7
    invoke-virtual {v10, v0}, Lcom/huawei/hms/scankit/m;->a(Landroid/graphics/Rect;)V

    move/from16 v0, p11

    .line 8
    invoke-virtual {v10, v0}, Lcom/huawei/hms/scankit/m;->a(Z)V

    .line 9
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    move/from16 v0, p10

    .line 10
    iput-boolean v0, v8, Lcom/huawei/hms/scankit/a;->l:Z

    .line 11
    new-instance v0, Lcom/huawei/hms/scankit/C;

    invoke-direct {v0, v10}, Lcom/huawei/hms/scankit/C;-><init>(Lcom/huawei/hms/scankit/m;)V

    invoke-virtual {v9, v0}, Lcom/huawei/hms/scankit/p/Aa;->a(Lcom/huawei/hms/scankit/p/Aa$d;)V

    .line 12
    sget-object v0, Lcom/huawei/hms/scankit/a$a;->b:Lcom/huawei/hms/scankit/a$a;

    iput-object v0, v8, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    .line 13
    iput-object v9, v8, Lcom/huawei/hms/scankit/a;->f:Lcom/huawei/hms/scankit/p/Aa;

    .line 14
    invoke-virtual/range {p7 .. p7}, Lcom/huawei/hms/scankit/p/Aa;->o()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start preview time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan-time"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/a;->f()V

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/gd;->c(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;

    return-void
.end method

.method private b(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/a;->f:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa;->e()Landroid/graphics/Point;

    move-result-object v1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_0

    int-to-float v2, v2

    mul-float v2, v2, v5

    .line 5
    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    int-to-float v3, v3

    mul-float v3, v3, v5

    .line 6
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 7
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    mul-float v5, v5, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    .line 8
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    mul-float p1, p1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    mul-float v2, v2, v5

    .line 9
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    int-to-float v3, v3

    mul-float v3, v3, v5

    .line 10
    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    mul-float v5, v5, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    mul-float p1, p1, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr p1, v0

    .line 13
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {v0, v5, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/a;->k:Lcom/huawei/hms/scankit/A;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/aiscan/common/z;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->g:Lcom/huawei/hms/scankit/ViewfinderView;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/a;->b(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->g:Lcom/huawei/hms/scankit/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/ViewfinderView;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/a;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->k:Lcom/huawei/hms/scankit/A;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/huawei/hms/scankit/A;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/a;->c:I

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/a;->j:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/a;->h:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/a;->i:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/a;->j:Z

    return v0
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/a$a;->c:Lcom/huawei/hms/scankit/a$a;

    iput-object v0, p0, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->f:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->p()V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->b:Lcom/huawei/hms/scankit/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/m;->a()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->b:Lcom/huawei/hms/scankit/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/m;->b()V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->b:Lcom/huawei/hms/scankit/m;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CaptureHandler"

    const-string v1, "quitSynchronously   wait interrupt"

    .line 7
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    sget v0, Lcom/huawei/hms/scankit/R$id;->scankit_decode_succeeded:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    sget v0, Lcom/huawei/hms/scankit/R$id;->scankit_decode_failed:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    sget-object v1, Lcom/huawei/hms/scankit/a$a;->b:Lcom/huawei/hms/scankit/a$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/a$a;->a:Lcom/huawei/hms/scankit/a$a;

    iput-object v0, p0, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/a;->f:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->n()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_restart_preview:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/a;->f()V

    goto/16 :goto_1

    .line 3
    :cond_0
    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_decode_succeeded:I

    if-ne v0, v1, :cond_5

    .line 4
    sget-object v0, Lcom/huawei/hms/scankit/a$a;->b:Lcom/huawei/hms/scankit/a$a;

    iput-object v0, p0, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    .line 5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    instance-of v1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    if-eqz v1, :cond_6

    .line 7
    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    array-length v1, v0

    const-string v2, "CaptureHandler"

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "scan successful"

    .line 8
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-boolean v3, p0, Lcom/huawei/hms/scankit/a;->i:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const-string v3, "scan successful & return bitmap"

    .line 10
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "barcode_bitmap"

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "barcode_scaled_factor"

    .line 13
    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    if-eqz v2, :cond_1

    .line 14
    array-length p1, v2

    if-lez p1, :cond_1

    .line 15
    array-length p1, v2

    invoke-static {v2, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/a;->a:Lcom/huawei/hms/scankit/B;

    invoke-interface {p1, v0, v4, v5}, Lcom/huawei/hms/scankit/B;->a([Lcom/huawei/hms/ml/scan/HmsScan;Landroid/graphics/Bitmap;F)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/a;->a:Lcom/huawei/hms/scankit/B;

    invoke-interface {p1, v0, v4, v5}, Lcom/huawei/hms/scankit/B;->a([Lcom/huawei/hms/ml/scan/HmsScan;Landroid/graphics/Bitmap;F)V

    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/huawei/hms/scankit/a;->l:Z

    if-nez p1, :cond_4

    return-void

    :cond_3
    const-string p1, "retrieve  HmsScan lenth is 0"

    .line 19
    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/a;->f()V

    goto :goto_1

    .line 21
    :cond_5
    sget p1, Lcom/huawei/hms/scankit/R$id;->scankit_decode_failed:I

    if-ne v0, p1, :cond_6

    .line 22
    sget-object p1, Lcom/huawei/hms/scankit/a$a;->a:Lcom/huawei/hms/scankit/a$a;

    iput-object p1, p0, Lcom/huawei/hms/scankit/a;->d:Lcom/huawei/hms/scankit/a$a;

    .line 23
    iget-object p1, p0, Lcom/huawei/hms/scankit/a;->f:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Aa;->n()V

    :cond_6
    :goto_1
    return-void
.end method
