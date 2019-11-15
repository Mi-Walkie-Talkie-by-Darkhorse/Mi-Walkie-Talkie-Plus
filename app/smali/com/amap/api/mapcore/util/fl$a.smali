.class Lcom/amap/api/mapcore/util/fl$a;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/fl;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/trace/TraceListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/fl;ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->b:Ljava/util/List;

    iput p4, p0, Lcom/amap/api/mapcore/util/fl$a;->c:I

    iput p2, p0, Lcom/amap/api/mapcore/util/fl$a;->d:I

    iput-object p3, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/mapcore/util/dx;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/amap/api/mapcore/util/fl$a;->g:Lcom/amap/api/trace/TraceListener;

    return-void
.end method

.method private a()I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    :cond_1
    return v1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/trace/TraceLocation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/fl$a;->a(Ljava/util/List;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-gt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/trace/TraceLocation;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/trace/TraceLocation;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/trace/TraceLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v10, 0x1f4

    const-wide/16 v6, 0x0

    const/4 v14, 0x2

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fl;->b(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/mapcore/util/fl$c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->g:Lcom/amap/api/trace/TraceListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fl$c;->a(Lcom/amap/api/trace/TraceListener;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fl$a;->a()I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v14, :cond_2

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/fm;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fl;->b(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/mapcore/util/fl$c;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/fl$a;->d:I

    const-string v3, "\u8f68\u8ff9\u70b9\u592a\u5c11\u6216\u8ddd\u79bb\u592a\u8fd1,\u8f68\u8ff9\u7ea0\u504f\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fm;->a(Landroid/os/Handler;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/trace/TraceLocation;

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->copy()Lcom/amap/api/trace/TraceLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/mapcore/util/fl$a;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1f4

    add-int/lit8 v0, v0, -0x2

    div-int v11, v0, v2

    invoke-static {}, Lcom/amap/api/mapcore/util/fm;->a()Lcom/amap/api/mapcore/util/fm;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$a;->f:Ljava/lang/String;

    iget v3, p0, Lcom/amap/api/mapcore/util/fl$a;->d:I

    invoke-virtual {v0, v2, v3, v11, v1}, Lcom/amap/api/mapcore/util/fm;->a(Ljava/lang/String;III)V

    move v0, v10

    move v7, v8

    :goto_2
    if-gt v7, v11, :cond_1

    if-ne v7, v11, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v8

    :goto_4
    if-ge v1, v9, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/fl$a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/trace/TraceLocation;

    if-nez v0, :cond_5

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/amap/api/mapcore/util/fl$a;->c:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    iget v2, p0, Lcom/amap/api/mapcore/util/fl$a;->c:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fl;->c(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v2

    sget-object v4, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    :cond_6
    :goto_6
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/trace/TraceLocation;->getLongitude()D

    move-result-wide v12

    invoke-direct {v2, v4, v5, v12, v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/fl;->c(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fl;->c(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/trace/TraceLocation;->setLatitude(D)V

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/trace/TraceLocation;->setLongitude(D)V

    :cond_7
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget v2, p0, Lcom/amap/api/mapcore/util/fl$a;->c:I

    if-ne v2, v14, :cond_6

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fl;->c(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v2

    sget-object v4, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    goto :goto_6

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v14, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_a

    move v0, v9

    goto/16 :goto_2

    :cond_a
    new-instance v0, Lcom/amap/api/mapcore/util/fk;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fl;->d(Lcom/amap/api/mapcore/util/fl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/fl;->b(Lcom/amap/api/mapcore/util/fl;)Lcom/amap/api/mapcore/util/fl$c;

    move-result-object v2

    iget v4, p0, Lcom/amap/api/mapcore/util/fl$a;->c:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/fl$a;->f:Ljava/lang/String;

    iget v6, p0, Lcom/amap/api/mapcore/util/fl$a;->d:I

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/fk;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;ILjava/lang/String;II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fl$a;->a:Lcom/amap/api/mapcore/util/fl;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fl;->e(Lcom/amap/api/mapcore/util/fl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    move v0, v9

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :cond_b
    move v0, v9

    goto/16 :goto_2

    :cond_c
    move v9, v0

    goto/16 :goto_3
.end method
