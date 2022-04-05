.class public final Lcom/amap/api/col/l3/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/e$c;,
        Lcom/amap/api/col/l3/e$a;,
        Lcom/amap/api/col/l3/e$b;
    }
.end annotation


# static fields
.field static g:Z = false


# instance fields
.field private A:Lcom/amap/api/col/l3/i;

.field private B:Z

.field private C:Ljava/lang/String;

.field private final D:I

.field private E:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/amap/api/col/l3/e$b;

.field c:Lcom/amap/api/location/AMapLocation;

.field d:Lcom/amap/api/col/l3/e$a;

.field e:Landroid/content/Context;

.field f:Lcom/amap/api/col/l3/je;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/col/l3/kf;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/amap/api/location/AMapLocationClientOption;

.field o:Ljava/net/ServerSocket;

.field p:Z

.field q:Ljava/net/Socket;

.field r:Z

.field s:Lcom/amap/api/col/l3/e$c;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:Lcom/amap/api/col/l3/jh;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->t:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->u:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/amap/api/col/l3/e;->v:J

    iput-wide v2, p0, Lcom/amap/api/col/l3/e;->w:J

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/amap/api/col/l3/e;->y:J

    iput v0, p0, Lcom/amap/api/col/l3/e;->z:I

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    iput-wide v2, p0, Lcom/amap/api/col/l3/e;->j:J

    iput-wide v2, p0, Lcom/amap/api/col/l3/e;->k:J

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->l:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3/e;->B:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/amap/api/col/l3/e;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->p:Z

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/l3/e;->s:Lcom/amap/api/col/l3/e$c;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/amap/api/col/l3/e;->D:I

    const-string v0, "jsonp1"

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Lcom/amap/api/col/l3/i;)Lcom/amap/api/col/l3/i;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    return-object p1
.end method

.method private static a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/jh;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/jh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "ApsServiceCore"

    const-string v0, "newInstanceAMapLoc"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/e;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/jz;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/jz;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/je;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/je;->a()V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/je;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/e;->t:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3/e;->B:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/amap/api/col/l3/e;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->B:Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->C:Ljava/lang/String;

    const-string v0, "ApsServiceCore"

    const-string v1, "init"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/je;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/l3/jy;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ngpsAble"

    invoke-static {}, Lcom/amap/api/col/l3/jy;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/amap/api/col/l3/jy;->l()V

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "installMockApp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ApsServiceCore"

    const-string v1, "initAuth"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "ApsServiceCore"

    const-string p2, "sendMessage"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "nb"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "netUseTime"

    invoke-virtual {v0, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/e;->z:I

    invoke-static {}, Lcom/amap/api/col/l3/jy;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/e;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/e;->z:I

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->e()V

    iget-object p0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ApsServiceCore"

    const-string v1, "doGpsFusion"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Landroid/os/Messenger;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/jy;->e(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    iget-object p0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/je;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    :catchall_1
    move-exception p0

    const-string p1, "ApsServiceCore"

    const-string v0, "doCallOtherSer"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/e;->u:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->u:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3/jy;->e(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/je;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/e;->g()V

    iget-wide v0, p0, Lcom/amap/api/col/l3/e;->y:J

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/jy;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    const-string v0, "isCacheLoc"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3/e;->y:J

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/je;->e()V

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/e;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    const-string p1, "ApsServiceCore"

    const-string p2, "doInitAuth"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/e;Ljava/net/Socket;)V
    .locals 9

    const-string v0, "invokeSocketLocation part2"

    const-string v1, "invokeSocketLocation part3"

    const-string v2, "ApsServiceCore"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v3, Lcom/amap/api/col/l3/jz;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-direct {p0, v5}, Lcom/amap/api/col/l3/e;->a(Ljava/io/BufferedReader;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/e;->h()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    sput v3, Lcom/amap/api/col/l3/jz;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    :try_start_4
    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/e;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_6
    invoke-static {p0, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-static {p0, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    :try_start_9
    invoke-static {p0, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    return-void

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    :catchall_5
    move-exception v6

    goto :goto_1

    :catchall_6
    move-exception v6

    move-object v5, v4

    :goto_1
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "({\'package\':\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "invokeSocketLocation"

    invoke-static {v6, v2, v7}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    :try_start_d
    sput v3, Lcom/amap/api/col/l3/jz;->f:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    :try_start_e
    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/e;->c(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    return-void

    :catchall_7
    move-exception p0

    :try_start_10
    invoke-static {p0, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_12

    return-void

    :catchall_8
    move-exception p0

    :try_start_11
    invoke-static {p0, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    :try_start_13
    invoke-static {p0, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    return-void

    :catchall_a
    move-exception p0

    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_2

    :catchall_b
    move-exception p1

    :try_start_15
    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    throw p0

    :catchall_c
    move-exception v6

    sput v3, Lcom/amap/api/col/l3/jz;->f:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    :try_start_16
    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/e;->c(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    goto :goto_4

    :catchall_d
    move-exception p0

    :goto_3
    :try_start_18
    invoke-static {p0, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    goto :goto_4

    :catchall_e
    move-exception p0

    :try_start_19
    invoke-static {p0, v2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    goto :goto_4

    :catchall_f
    move-exception p0

    goto :goto_3

    :goto_4
    :try_start_1b
    throw v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    :catchall_10
    move-exception p0

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    goto :goto_5

    :catchall_11
    move-exception p1

    :try_start_1d
    invoke-static {p1, v2, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    throw p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    :catchall_12
    move-exception p0

    const-string p1, "invokeSocketLocation part4"

    invoke-static {p0, v2, p1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/je;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/col/l3/e;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/e;->w:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    :cond_2
    iput-object p1, p0, Lcom/amap/api/col/l3/e;->m:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ApsServiceCore"

    const-string v1, "setExtra"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7530

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    aget-object p1, p1, v2

    const-string v1, "\\?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-le v1, v2, :cond_2

    aget-object p1, p1, v2

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v2, :cond_1

    aget-object v5, v4, v1

    const-string v6, "to"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v0, v4, v2

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->h(Ljava/lang/String;)I

    move-result v0

    :cond_0
    aget-object v5, v4, v1

    const-string v6, "callback"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sput v0, Lcom/amap/api/col/l3/jz;->f:I

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/amap/api/col/l3/jh;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/amap/api/col/l3/e;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3

    const-string v0, "APSManager"

    const-string v1, "optBundle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3/jz;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :try_start_0
    const-string v2, "d"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/l3/gb;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v2, "doLocation setUmidToken"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-string v2, "parseBundle"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/e;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    :goto_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->e()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    const/4 v0, 0x5

    invoke-static {}, Lcom/amap/api/col/l3/jy;->d()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ApsServiceCore"

    const-string v1, "doOffFusion"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/e;Landroid/os/Messenger;)V
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v0, p2

    const-string v9, "ApsServiceCore"

    if-eqz v0, :cond_d

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, v7, Lcom/amap/api/col/l3/e;->B:Z

    const/16 v10, 0x9

    const/4 v11, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/amap/api/col/l3/e;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#0901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/amap/api/col/l3/e;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v3

    iput-object v3, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/jh;->l()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    const/16 v0, 0x82b

    invoke-static {v11, v0}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v12, v7, Lcom/amap/api/col/l3/e;->w:J

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x258

    cmp-long v0, v2, v12

    if-gez v0, :cond_3

    iget-object v3, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->l()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    goto/16 :goto_4

    :cond_3
    new-instance v12, Lcom/amap/api/col/l3/ke;

    invoke-direct {v12}, Lcom/amap/api/col/l3/ke;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/amap/api/col/l3/ke;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x8

    :try_start_1
    iget-object v0, v7, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->d()Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    :cond_4
    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->k()J

    move-result-wide v4

    :cond_5
    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v12, v0}, Lcom/amap/api/col/l3/ke;->a(Lcom/amap/api/col/l3/jh;)V

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    iget-object v3, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Lcom/amap/api/col/l3/je;->a(Lcom/amap/api/col/l3/jh;[Ljava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/16 v3, 0x821

    :try_start_2
    invoke-static {v11, v3}, Lcom/amap/api/col/l3/kf;->a(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "loc error : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#0801"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/e;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v3

    iput-object v3, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    const-string v3, "run part2"

    invoke-static {v0, v9, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-wide v5, v4

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/amap/api/col/l3/ke;->b(J)V

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/col/l3/jh;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/amap/api/col/l3/e;->w:J

    :cond_6
    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    if-nez v0, :cond_7

    const-string v0, "loc is null#0801"

    invoke-static {v2, v0}, Lcom/amap/api/col/l3/e;->a(ILjava/lang/String;)Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    :cond_7
    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/jh;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v0

    goto :goto_1

    :cond_8
    move-object v4, v11

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v1

    invoke-virtual {v0, v11, v4, v1, v2}, Lcom/amap/api/col/l3/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    :goto_2
    move-object v3, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v1, "fixLastLocation"

    invoke-static {v0, v9, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/amap/api/col/l3/kf;->a(Landroid/content/Context;Lcom/amap/api/col/l3/ke;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;)V

    invoke-static {}, Lcom/amap/api/col/l3/jy;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/amap/api/col/l3/e;->g()V

    :cond_a
    iget-wide v0, v7, Lcom/amap/api/col/l3/e;->y:J

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/jy;->a(J)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-ne v0, v10, :cond_c

    :cond_b
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/amap/api/col/l3/e;->y:J

    iget-object v0, v7, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->e()V

    :cond_c
    invoke-direct {p0}, Lcom/amap/api/col/l3/e;->i()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    const-string v1, "doLocation"

    invoke-static {v0, v9, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/l3/e;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    iget-wide v1, p0, Lcom/amap/api/col/l3/e;->v:J

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jy;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3/ki;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/e;->v:J

    iget-object p0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/je;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ApsServiceCore"

    const-string v1, "doNGps"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Content-Length:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/l3/e;->g:Z

    return-void
.end method

.method private g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/amap/api/col/l3/jy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/amap/api/col/l3/jy;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3/jy;->d()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/ki;->e(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "({\'package\':\'"

    const-string v4, "&&"

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1388

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->d()Lcom/amap/api/col/l3/jh;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "getSocketLocResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",\'precision\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",\'x\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->x:Lcom/amap/api/col/l3/jh;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "},\'version_code\':\'4.7.2\',\'version\':\'4.7.2\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/kf;

    invoke-direct {v0}, Lcom/amap/api/col/l3/kf;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    new-instance v0, Lcom/amap/api/col/l3/e$b;

    const-string v1, "amapLocCoreThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/e$b;-><init>(Lcom/amap/api/col/l3/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/amap/api/col/l3/e$a;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/e$a;-><init>(Lcom/amap/api/col/l3/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "as"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method final a(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/jy;->r()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "lat"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "lon"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v4, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [D

    const/4 v6, 0x0

    aput-wide v0, v4, v6

    const/4 v6, 0x1

    aput-wide v2, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v7

    aput-wide v7, v4, v6

    iget-object v6, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x3

    aput-wide v6, v4, v8

    invoke-static {v4}, Lcom/amap/api/col/l3/ki;->a([D)F

    move-result v4

    invoke-static {}, Lcom/amap/api/col/l3/jy;->s()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-class v7, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v7, "I_MAX_GEO_DIS"

    invoke-static {}, Lcom/amap/api/col/l3/jy;->s()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "I_MIN_GEO_DIS"

    invoke-static {}, Lcom/amap/api/col/l3/jy;->s()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "loc"

    iget-object v8, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x6

    invoke-static {p1, v7, v6}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/high16 v4, -0x40800000    # -1.0f

    :cond_3
    :goto_0
    cmpl-float p1, v4, v5

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3/jy;->s()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v4, p1

    if-lez p1, :cond_5

    :cond_4
    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/e;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amap/api/col/l3/je;->a(DD)Lcom/amap/api/col/l3/jh;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/e;->c:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ApsServiceCore"

    const-string v0, "doLocationGeo"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/jz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->l:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    return-object v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/fx;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3/fw;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/amap/api/col/l3/gb;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const-string v1, "f"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/amap/api/col/l3/jy;->a:Z

    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/e;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/e$c;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/e$c;-><init>(Lcom/amap/api/col/l3/e;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->s:Lcom/amap/api/col/l3/e$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "ApsServiceCore"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "doStopScocket 1"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "doStopScocket 2"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->s:Lcom/amap/api/col/l3/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->s:Lcom/amap/api/col/l3/e$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->s:Lcom/amap/api/col/l3/e$c;

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->o:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->p:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/e;->r:Z

    return-void
.end method

.method public final e()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/je;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    const-class v3, Landroid/os/HandlerThread;

    const-string v4, "quitSafely"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3/e;->b:Lcom/amap/api/col/l3/e$b;

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->d:Lcom/amap/api/col/l3/e$a;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/i;->c()V

    iput-object v0, p0, Lcom/amap/api/col/l3/e;->A:Lcom/amap/api/col/l3/i;

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/e;->d()V

    iput-boolean v2, p0, Lcom/amap/api/col/l3/e;->t:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/e;->u:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->f:Lcom/amap/api/col/l3/je;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/je;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/kf;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/amap/api/col/l3/e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    iget-wide v0, p0, Lcom/amap/api/col/l3/e;->k:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/e;->j:J

    sub-long v9, v0, v2

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/kf;->c(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/kf;->d(Landroid/content/Context;)I

    move-result v6

    iget-object v4, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    iget-wide v7, p0, Lcom/amap/api/col/l3/e;->k:J

    invoke-static/range {v4 .. v10}, Lcom/amap/api/col/l3/kf;->a(Landroid/content/Context;IIJJ)V

    iget-object v0, p0, Lcom/amap/api/col/l3/e;->i:Lcom/amap/api/col/l3/kf;

    iget-object v1, p0, Lcom/amap/api/col/l3/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/kf;->e(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcom/amap/api/col/l3/gv;->b()V

    sget-boolean v0, Lcom/amap/api/col/l3/e;->g:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
