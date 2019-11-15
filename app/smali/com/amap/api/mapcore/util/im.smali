.class public final Lcom/amap/api/mapcore/util/im;
.super Ljava/lang/Object;
.source "MapLocFilter.java"


# static fields
.field private static c:Lcom/amap/api/mapcore/util/im;


# instance fields
.field a:I

.field b:J

.field private d:Lcom/amap/api/mapcore/util/ij;

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/im;->c:Lcom/amap/api/mapcore/util/im;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/im;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/im;->a:I

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/im;->b:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/mapcore/util/im;
    .locals 2

    const-class v1, Lcom/amap/api/mapcore/util/im;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/im;->c:Lcom/amap/api/mapcore/util/im;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/im;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/im;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/im;->c:Lcom/amap/api/mapcore/util/im;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/im;->c:Lcom/amap/api/mapcore/util/im;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/amap/api/mapcore/util/ij;)Lcom/amap/api/mapcore/util/ij;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/mapcore/util/ij;)Lcom/amap/api/mapcore/util/ij;
    .locals 12

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/im;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->b:J

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->b:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/it;->a(Lcom/amap/api/mapcore/util/ij;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amap/api/mapcore/util/it;->a(Lcom/amap/api/mapcore/util/ij;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->c()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ij;->c()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ij;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/im;->a:I

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->a([D)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ij;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ij;->getAccuracy()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/im;->e:J

    sub-long v6, v4, v6

    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    :cond_9
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/im;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iput-wide v4, p0, Lcom/amap/api/mapcore/util/im;->f:J

    :cond_a
    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/im;->f:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v4, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->f:J

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    iput-wide v4, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->f:J

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/amap/api/mapcore/util/im;->f:J

    :cond_e
    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iput-wide v4, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/im;->e:J

    iput-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/im;->d:Lcom/amap/api/mapcore/util/ij;

    goto/16 :goto_0
.end method
