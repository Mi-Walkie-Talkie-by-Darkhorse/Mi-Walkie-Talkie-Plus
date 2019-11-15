.class public final Lcom/amap/api/col/sl/e;
.super Ljava/lang/Object;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/e$c;,
        Lcom/amap/api/col/sl/e$a;,
        Lcom/amap/api/col/sl/e$b;
    }
.end annotation


# static fields
.field static g:Z


# instance fields
.field private A:Lcom/amap/api/col/sl/i;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/amap/api/col/sl/e$b;

.field c:Lcom/amap/api/location/AMapLocation;

.field d:Lcom/amap/api/col/sl/e$a;

.field e:Landroid/content/Context;

.field f:Lcom/amap/api/col/sl/er;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/col/sl/fv;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/amap/api/location/AMapLocationClientOption;

.field o:Ljava/net/ServerSocket;

.field p:Z

.field q:Ljava/net/Socket;

.field r:Z

.field s:Lcom/amap/api/col/sl/e$c;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:Lcom/amap/api/col/sl/ev;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/col/sl/e;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/col/sl/e;->t:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/e;->u:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    iput-wide v4, p0, Lcom/amap/api/col/sl/e;->v:J

    iput-wide v4, p0, Lcom/amap/api/col/sl/e;->w:J

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/amap/api/col/sl/e;->y:J

    iput v2, p0, Lcom/amap/api/col/sl/e;->z:I

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    iput-wide v4, p0, Lcom/amap/api/col/sl/e;->j:J

    iput-wide v4, p0, Lcom/amap/api/col/sl/e;->k:J

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->B:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->o:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/e;->p:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->q:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/e;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    const-string v0, "jsonp1"

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/sl/ev;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/amap/api/col/sl/ev;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/ev;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Lcom/amap/api/col/sl/i;)Lcom/amap/api/col/sl/i;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/e;->t:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fq;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fq;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->t:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/er;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->a()V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/e;->B:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/e;->C:Ljava/lang/String;

    const-string v1, "APSServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$a;->removeMessages(I)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$a;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$a;->removeMessages(I)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fp;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "sendMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "nb"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "netUseTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/sl/e;->z:I

    invoke-static {}, Lcom/amap/api/col/sl/fp;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/sl/e;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/e;->z:I

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/sl/e$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doGpsFusion"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doCallOtherSer"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/sl/e;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->u:Z

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->g()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;)V

    iget-wide v0, p0, Lcom/amap/api/col/sl/e;->y:J

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fp;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    const-string v1, "isCacheLoc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/e;->y:J

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/sl/e;->h()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doInitAuth"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/e;Ljava/net/Socket;)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v3, Lcom/amap/api/col/sl/fq;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/e;->a(Ljava/io/BufferedReader;)V

    invoke-direct {p0}, Lcom/amap/api/col/sl/e;->g()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v0

    :try_start_3
    sput v3, Lcom/amap/api/col/sl/fq;->f:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/e;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "APSServiceCore"

    const-string v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "invokeSocketLocation part4"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part2"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "APSServiceCore"

    const-string v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :goto_1
    :try_start_b
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "APSServiceCore"

    const-string v5, "invokeSocketLocation"

    invoke-static {v0, v4, v5}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    sput v3, Lcom/amap/api/col/sl/fq;->f:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-direct {p0, v2}, Lcom/amap/api/col/sl/e;->c(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_10
    const-string v1, "APSServiceCore"

    const-string v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_11
    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part2"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_13
    const-string v1, "APSServiceCore"

    const-string v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    :goto_3
    :try_start_15
    throw v0

    :catch_9
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    sput v3, Lcom/amap/api/col/sl/fq;->f:I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    :try_start_16
    invoke-direct {p0, v2}, Lcom/amap/api/col/sl/e;->c(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    :goto_5
    :try_start_18
    throw v0

    :catch_a
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_5

    :catch_b
    move-exception v2

    :try_start_19
    const-string v3, "APSServiceCore"

    const-string v4, "invokeSocketLocation part2"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_5

    :catch_c
    move-exception v1

    :try_start_1b
    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_6
    :try_start_1d
    throw v0

    :catch_d
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/col/sl/e;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/e;->w:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    :cond_2
    iput-object p1, p0, Lcom/amap/api/col/sl/e;->m:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x7530

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-le v3, v7, :cond_2

    aget-object v1, v1, v7

    const-string v3, "\\?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-le v3, v7, :cond_2

    aget-object v1, v1, v7

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v1, v3

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v7, :cond_1

    const-string v5, "to"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string v5, "callback"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sput v0, Lcom/amap/api/col/sl/fq;->f:I

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/amap/api/col/sl/ev;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/amap/api/col/sl/e;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fq;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :try_start_0
    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/sl/bu;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "APSManager"

    const-string v3, "doLocation setUmidToken"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "APSManager"

    const-string v3, "parseBundle"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/er;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ngpsAble"

    invoke-static {}, Lcom/amap/api/col/sl/fp;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->r()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/e;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fp;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x5

    invoke-static {}, Lcom/amap/api/col/sl/fp;->d()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/sl/e$a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doOffFusion"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 11

    const/16 v10, 0x9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/amap/api/col/sl/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v6

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v8

    sub-long v4, v8, v4

    const-wide/16 v8, 0x320

    cmp-long v0, v4, v8

    if-ltz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/e;->B:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#0901"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    const/4 v0, 0x0

    const/16 v1, 0x82b

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_7

    iget-wide v8, p0, Lcom/amap/api/col/sl/e;->w:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x258

    cmp-long v0, v4, v8

    if-gez v0, :cond_7

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->b(Landroid/os/Messenger;)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;)V

    :cond_4
    iget-wide v0, p0, Lcom/amap/api/col/sl/e;->y:J

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fp;->a(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    if-ne v0, v10, :cond_6

    :cond_5
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/e;->y:J

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V

    :cond_6
    invoke-direct {p0}, Lcom/amap/api/col/sl/e;->h()V

    goto/16 :goto_0

    :cond_7
    new-instance v7, Lcom/amap/api/col/sl/fu;

    invoke-direct {v7}, Lcom/amap/api/col/sl/fu;-><init>()V

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/amap/api/col/sl/fu;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->d()Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->k()J

    move-result-wide v2

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v7, v0}, Lcom/amap/api/col/sl/fu;->a(Lcom/amap/api/col/sl/ev;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v4, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/col/sl/ev;[Ljava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v4, v2

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/amap/api/col/sl/fu;->b(J)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/sl/e;->w:J

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-nez v0, :cond_b

    const/16 v0, 0x8

    const-string v2, "loc is null#0801"

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/e;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lcom/amap/api/col/sl/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :cond_c
    move-object v2, v0

    :goto_4
    move-object v0, p0

    move-object v1, p1

    :try_start_5
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/col/sl/fu;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    const/16 v5, 0x821

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "loc error : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#0801"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/api/col/sl/e;->a(ILjava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    const-string v4, "APSServiceCore"

    const-string v5, "run part2"

    invoke-static {v0, v4, v5}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v6, "fixLastLocation"

    invoke-static {v1, v2, v6}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v0

    goto :goto_4

    :cond_d
    move-object v3, v1

    goto :goto_3
.end method

.method static synthetic c(Lcom/amap/api/col/sl/e;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    iget-wide v2, p0, Lcom/amap/api/col/sl/e;->v:J

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fp;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/sl/e;->v:J

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doNGps"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

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

    sput-boolean v0, Lcom/amap/api/col/sl/e;->g:Z

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/fy;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v2}, Lcom/amap/api/col/sl/ev;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->d()Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "getSocketLocResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'precision\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'x\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->x:Lcom/amap/api/col/sl/ev;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},\'version_code\':\'3.8.0\',\'version\':\'3.8.0\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/sl/fv;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fv;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    new-instance v0, Lcom/amap/api/col/sl/e$b;

    const-string v1, "amapLocCoreThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/sl/e$b;-><init>(Lcom/amap/api/col/sl/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$b;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e$b;->start()V

    new-instance v0, Lcom/amap/api/col/sl/e$a;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/e$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/sl/e$a;-><init>(Lcom/amap/api/col/sl/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "true"

    const-string v1, "as"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/16 v1, 0x9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/sl/e$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method final a(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/fp;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lat"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lon"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {p0, p2}, Lcom/amap/api/col/sl/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v6, 0x0

    aput-wide v2, v0, v6

    const/4 v6, 0x1

    aput-wide v4, v0, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a([D)F

    move-result v0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->A()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-class v7, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v7, "lMaxGeoDis"

    invoke-static {}, Lcom/amap/api/col/sl/fp;->A()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "lMinGeoDis"

    invoke-static {}, Lcom/amap/api/col/sl/fp;->A()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "loc"

    iget-object v8, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x6

    invoke-static {p1, v7, v6}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amap/api/col/sl/fp;->A()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/amap/api/col/sl/er;->a(DD)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->c:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocationGeo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->l:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

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

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/bq;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/sl/bp;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/amap/api/col/sl/bu;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "f"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/amap/api/col/sl/fp;->a:Z

    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/e;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/e$c;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/e$c;-><init>(Lcom/amap/api/col/sl/e;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e$c;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->r:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->q:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->q:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->o:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e$c;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/amap/api/col/sl/e;->s:Lcom/amap/api/col/sl/e$c;

    iput-object v4, p0, Lcom/amap/api/col/sl/e;->o:Ljava/net/ServerSocket;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/e;->p:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/e;->r:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doStopScocket 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doStopScocket 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final e()V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->h:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/er;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/e$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->d:Lcom/amap/api/col/sl/e$a;

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/i;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/e;->A:Lcom/amap/api/col/sl/i;

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/sl/e;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/e;->u:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->f:Lcom/amap/api/col/sl/er;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/er;->f()V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/amap/api/col/sl/e;->j:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/amap/api/col/sl/e;->k:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/sl/e;->j:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fv;->c(Landroid/content/Context;)I

    move-result v2

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fv;->d(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/amap/api/col/sl/e;->k:J

    invoke-static/range {v1 .. v7}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;IIJJ)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->i:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fv;->e(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/amap/api/col/sl/cm;->b()V

    sget-boolean v0, Lcom/amap/api/col/sl/e;->g:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e$b;->quit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/e;->b:Lcom/amap/api/col/sl/e$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e$b;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
