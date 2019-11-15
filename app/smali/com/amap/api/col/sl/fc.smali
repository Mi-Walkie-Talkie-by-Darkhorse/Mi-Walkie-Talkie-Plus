.class public final Lcom/amap/api/col/sl/fc;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/fc$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:I

.field private g:Z

.field private h:Lcom/amap/api/col/sl/fl;

.field private i:Lcom/amap/api/col/sl/fe;

.field private j:Landroid/net/ConnectivityManager;

.field private k:J

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fc;->c:Z

    const-string v0, "com.data.carrier_v4.CollectorManager"

    iput-object v0, p0, Lcom/amap/api/col/sl/fc;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    iput v1, p0, Lcom/amap/api/col/sl/fc;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fc;->g:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->h:Lcom/amap/api/col/sl/fl;

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->j:Landroid/net/ConnectivityManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/fc;->k:J

    iput-object v2, p0, Lcom/amap/api/col/sl/fc;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/fc;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/sl/fc;->k:J

    return-wide v0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/fc;I)V
    .locals 9

    const v1, 0x282fffff

    const v0, 0x42fffff

    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->v()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    move v1, v0

    :cond_3
    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v2, "callBackWrapData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "e"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "d"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "u"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v2, "getReportDate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_2
    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/amap/api/col/sl/fc;->h:Lcom/amap/api/col/sl/fl;

    iget-object v3, p0, Lcom/amap/api/col/sl/fc;->l:Landroid/content/Context;

    const-string v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    invoke-virtual {v2, v0, v3, v4}, Lcom/amap/api/col/sl/fl;->a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v3, "setUploadResult"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/sl/fc;->f:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/amap/api/col/sl/fc;->e()V

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->k()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    move v1, v0

    goto/16 :goto_1

    :pswitch_2
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    iget-object v2, p0, Lcom/amap/api/col/sl/fc;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    const v0, 0x7c2fffff

    move v1, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/sl/fc;->f:I

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/amap/api/col/sl/fc;->f:I

    if-lt v0, v8, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/amap/api/col/sl/fc;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/fc;)I
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->k()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/amap/api/col/sl/fc;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/sl/fc;)Lcom/amap/api/col/sl/fe;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/col/sl/fc;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->j:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->h()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CollectionManager"

    const-string v3, "collStarted"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v2, "isStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v2, "getLeftUploadNum"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v1, "getColUpHist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/amap/api/col/sl/fl;Lcom/amap/api/col/sl/fe;Lcom/amap/api/location/AMapLocationClientOption;Landroid/net/ConnectivityManager;)V
    .locals 6

    invoke-static {}, Lcom/amap/api/col/sl/fp;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/amap/api/col/sl/fq;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/sl/fc;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/fc;->h:Lcom/amap/api/col/sl/fl;

    iput-object p3, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    iput-object p5, p0, Lcom/amap/api/col/sl/fc;->j:Landroid/net/ConnectivityManager;

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fc;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/fc;->k:J

    const-string v0, "Collection"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fc;->c:Z

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fc;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/sl/fc;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/fc;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/sl/fp;->v()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fc;->b()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/col/sl/fc;->c:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "initCollection"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/amap/api/col/sl/fc;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/sl/fc;->g:Z

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "stop3rdCM"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/cm;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/fc$a;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/fc$a;-><init>(Lcom/amap/api/col/sl/fc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    const-wide/16 v2, 0x7d0

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fc;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->i:Lcom/amap/api/col/sl/fe;

    iget-object v1, p0, Lcom/amap/api/col/sl/fc;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->v()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/col/sl/fc$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/fc$1;-><init>(Lcom/amap/api/col/sl/fc;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/amap/api/col/sl/fc;->e:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/sl/fc;->k()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fc;->a:Ljava/lang/Object;

    const-string v2, "getInnerString"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "version"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CollectionManager"

    const-string v3, "getCollVer"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
