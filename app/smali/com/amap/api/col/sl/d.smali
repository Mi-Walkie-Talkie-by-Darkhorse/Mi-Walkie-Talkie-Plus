.class public Lcom/amap/api/col/sl/d;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/d$a;,
        Lcom/amap/api/col/sl/d$b;,
        Lcom/amap/api/col/sl/d$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private volatile B:Z

.field private C:Z

.field private D:Lcom/amap/api/col/sl/h;

.field private E:Landroid/content/ServiceConnection;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/amap/api/col/sl/d$c;

.field c:Lcom/amap/api/col/sl/g;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field public f:Z

.field public g:Z

.field h:Lcom/amap/api/col/sl/i;

.field i:Landroid/os/Messenger;

.field j:Landroid/os/Messenger;

.field k:Landroid/content/Intent;

.field l:I

.field m:Lcom/amap/api/col/sl/d$b;

.field n:Z

.field o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field p:Ljava/lang/Object;

.field q:Lcom/amap/api/col/sl/fv;

.field r:Z

.field s:Lcom/amap/api/col/sl/e;

.field t:Ljava/lang/String;

.field u:Z

.field v:Z

.field w:Lcom/amap/api/col/sl/d$a;

.field x:Ljava/lang/String;

.field y:Z

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->A:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->e:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/d;->f:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/d;->g:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->j:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    iput v2, p0, Lcom/amap/api/col/sl/d;->l:I

    iput-boolean v3, p0, Lcom/amap/api/col/sl/d;->C:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->n:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->p:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->s:Lcom/amap/api/col/sl/e;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->t:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/col/sl/d$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/d$1;-><init>(Lcom/amap/api/col/sl/d;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->E:Landroid/content/ServiceConnection;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->u:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->v:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->x:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->y:Z

    iput-object p1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    invoke-static {}, Lcom/amap/api/col/sl/fq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fq;->b()Lcom/amap/api/col/sl/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/d$c;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/sl/d$c;-><init>(Lcom/amap/api/col/sl/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/amap/api/col/sl/i;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    new-instance v0, Lcom/amap/api/col/sl/d$b;

    const-string v1, "amapLocManagerThread"

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/sl/d$b;-><init>(Ljava/lang/String;Lcom/amap/api/col/sl/d;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/d$b;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/d$b;->start()V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/d$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/d;->a(Landroid/os/Looper;)Lcom/amap/api/col/sl/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    new-instance v0, Lcom/amap/api/col/sl/g;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/sl/fv;

    invoke-direct {v0}, Lcom/amap/api/col/sl/fv;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    :cond_1
    return-void

    :cond_2
    :try_start_5
    new-instance v0, Lcom/amap/api/col/sl/d$c;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/d$c;-><init>(Lcom/amap/api/col/sl/d;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 5"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/os/Looper;)Lcom/amap/api/col/sl/d$a;
    .locals 2

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amap/api/col/sl/d$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/sl/d$a;-><init>(Lcom/amap/api/col/sl/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/col/sl/er;)Lcom/amap/api/col/sl/ev;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->j()Lcom/amap/api/col/sl/ev;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doFirstCacheLoc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->t:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->j:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/RemoteException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sending message to a Handler on a dead thread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/d;->A:Z

    :cond_4
    const-string v1, "AMapLocationManager"

    const-string v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    invoke-virtual {v2, v0, p3, p4}, Lcom/amap/api/col/sl/d$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForegroundService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v5, p0, Lcom/amap/api/col/sl/d;->y:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/d;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/sl/fp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/amap/api/col/sl/fp;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/sl/d$2;

    invoke-direct {v3, p0}, Lcom/amap/api/col/sl/d$2;-><init>(Lcom/amap/api/col/sl/d;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/fp;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/sl/d$3;

    invoke-direct {v3, p0}, Lcom/amap/api/col/sl/d$3;-><init>(Lcom/amap/api/col/sl/d;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->d()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/sl/d;Landroid/os/Bundle;)V
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v1, "nb"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/d;->x:Ljava/lang/String;

    const-string v1, "netUseTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/g;->c()V

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    iput-object v0, v1, Lcom/amap/api/col/sl/g;->z:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-wide v2, v6

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    iget-object v5, p0, Lcom/amap/api/col/sl/d;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/amap/api/col/sl/g;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    move-wide v8, v2

    move-object v2, v4

    move-object v4, v0

    move-wide v0, v8

    :goto_1
    invoke-direct {p0, v4, v2, v0, v1}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V

    return-void

    :catch_0
    move-exception v2

    move-wide v0, v6

    :goto_2
    const-string v3, "AMapLocationManager"

    const-string v5, "doLbsLocationSuccess"

    invoke-static {v2, v3, v5}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    goto :goto_2

    :cond_2
    move-wide v2, v6

    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    iget-boolean v1, p0, Lcom/amap/api/col/sl/d;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "optBundle"

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/d;->g:Z

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V

    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doGpsLocationSuccess"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static a(Lcom/amap/api/col/sl/er;Lcom/amap/api/col/sl/ev;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/col/sl/ev;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/col/sl/ev;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "apsLocation:doFirstAddCache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V
    .locals 5

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fq;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const-string v1, "loc"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const-string v1, "loc"

    const-string v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-nez p1, :cond_3

    :try_start_3
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {p1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v2, "amapLocation is null#0801"

    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_3
    const-string v2, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "lbs"

    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/g;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setGPSSatellites(I)V

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v3}, Lcom/amap/api/col/sl/g;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setGpsStatus(I)V

    :cond_5
    iget-object v3, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/sl/fy;->g(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setWifiAble(Z)V

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/sl/fy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const-string v3, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-wide p3, v0

    :cond_7
    invoke-virtual {v2, p3, p4}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->B:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->x:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "loc"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "lastLocNb"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f6

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amap/api/col/sl/fv;->b(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_1
    :try_start_5
    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->n:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/amap/api/col/sl/fq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fw;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->f()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/sl/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/sl/d;->A:Z

    return p1
.end method

.method private b(Lcom/amap/api/col/sl/er;)Lcom/amap/api/col/sl/ev;
    .locals 13

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v7, Lcom/amap/api/col/sl/fu;

    invoke-direct {v7}, Lcom/amap/api/col/sl/fu;-><init>()V

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/amap/api/col/sl/fu;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amap/api/col/sl/bq;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/amap/api/col/sl/bu;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/sl/er;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/sl/er;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->i()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-wide/16 v2, 0x0

    :try_start_4
    invoke-static {}, Lcom/amap/api/col/sl/fp;->D()Z

    move-result v8

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/er;)Lcom/amap/api/col/sl/ev;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-nez v4, :cond_a

    if-nez v8, :cond_2

    move v6, v5

    :cond_2
    :try_start_5
    invoke-virtual {p1, v6}, Lcom/amap/api/col/sl/er;->a(Z)Lcom/amap/api/col/sl/ev;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/col/sl/ev;->k()J

    move-result-wide v2

    if-nez v8, :cond_3

    invoke-static {p1, v4}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/er;Lcom/amap/api/col/sl/ev;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    move-object v1, v4

    move v4, v5

    :goto_3
    :try_start_6
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/amap/api/col/sl/fu;->b(J)V

    invoke-virtual {v7, v1}, Lcom/amap/api/col/sl/fu;->a(Lcom/amap/api/col/sl/ev;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :cond_4
    :try_start_7
    iget-object v5, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v5}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    iget-object v6, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v10

    invoke-virtual {v5, v1, v0, v10, v11}, Lcom/amap/api/col/sl/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_4
    :try_start_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_5

    const-string v6, "loc"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "nb"

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "netUseTime"

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/d$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/col/sl/fu;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_6

    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->c()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/sl/er;->a(Z)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/col/sl/d;->a(Lcom/amap/api/col/sl/er;Lcom/amap/api/col/sl/ev;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_6
    if-eqz p1, :cond_7

    :try_start_b
    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->f()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    :cond_7
    :goto_7
    return-object v1

    :catch_0
    move-exception v1

    :try_start_c
    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation setAuthKey"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_8
    :try_start_d
    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz p1, :cond_7

    :try_start_e
    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->f()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v1

    :try_start_f
    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation setUmidToken"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_8

    :try_start_10
    invoke-virtual {p1}, Lcom/amap/api/col/sl/er;->f()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    :cond_8
    :goto_9
    throw v0

    :catch_4
    move-exception v1

    :try_start_11
    const-string v2, "AMapLocationManager"

    const-string v3, "initApsBase"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v1

    :try_start_12
    const-string v6, "AMapLocationManager"

    const-string v9, "apsLocation:doFirstNetLocate"

    invoke-static {v1, v6, v9}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object v1, v4

    move v4, v5

    goto/16 :goto_3

    :catch_6
    move-exception v0

    :try_start_13
    const-string v5, "AMapLocationManager"

    const-string v6, "fixLastLocation"

    invoke-static {v0, v5, v6}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation:callback"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation:doFirstNetLocate 2"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v1

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v4

    goto :goto_8

    :cond_a
    move-object v1, v4

    move v4, v6

    goto/16 :goto_3
.end method

.method private b()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    const/16 v2, 0x3f8

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/d$a;->removeMessages(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->d()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/sl/d;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "loc"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v2, "lastLocNb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v3, Lcom/amap/api/col/sl/i;->b:Lcom/amap/api/col/sl/fh;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/i;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/amap/api/col/sl/fv;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/col/sl/i;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/i;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-object v1, Lcom/amap/api/col/sl/i;->b:Lcom/amap/api/col/sl/fh;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/fh;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doSaveLastLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/col/sl/d;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->f()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/sl/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/sl/d;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/col/sl/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->h()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "h"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->i()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "h"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "g"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/amap/api/col/sl/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doEnableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1\uff0c\u5e76\u4e14manifest\u4e2dservice\u6807\u7b7e\u662f\u5426\u914d\u7f6e\u5728application\u6807\u7b7e\u5185#1001"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string v4, "loc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/sl/d$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x835

    invoke-static {v1, v2}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    :cond_3
    return v0

    :catch_0
    move-exception v0

    const-string v2, "AMapLocationManager"

    const-string v3, "checkAPSManager"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/amap/api/col/sl/fp;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/amap/api/col/sl/fp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/amap/api/col/sl/fp;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/col/sl/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->e()V

    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/sl/d;Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "j"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->i()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "j"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "g"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/sl/d;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doDisableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 6

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/col/sl/d;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->B:Z

    sget-object v2, Lcom/amap/api/col/sl/d$4;->a:[I

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3f9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->b()V

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3f7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x7530

    :cond_2
    const/16 v2, 0x3f8

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/amap/api/col/sl/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/g;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/d;->B:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/d;->l:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/amap/api/col/sl/d;)V
    .locals 4

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method private g()V
    .locals 6

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/amap/api/col/sl/d;)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/d;->f:Z

    new-instance v0, Lcom/amap/api/col/sl/er;

    invoke-direct {v0}, Lcom/amap/api/col/sl/er;-><init>()V

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/er;)Lcom/amap/api/col/sl/ev;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ev;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    const-string v0, "1"

    :cond_1
    const-string v1, "optBundle"

    iget-object v3, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->g()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->r:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/amap/api/col/sl/d;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->v:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/d;->v:Z

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->h()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/d;->v:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/g;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "AMapLocationManager"

    const-string v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->g()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/amap/api/col/sl/d;->v:Z

    const-string v1, "AMapLocationManager"

    const-string v2, "doLBSLocation reStartService"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->g()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private h()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->j:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->j:Landroid/os/Messenger;

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->i()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->E:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/amap/api/col/sl/d;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->c:Lcom/amap/api/col/sl/g;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/g;->b(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->f()V

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->e()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->o:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private i()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/APSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    :cond_0
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    const-string v1, "b"

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    const-string v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    const-string v1, "f"

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isDownloadCoordinateConvertLibrary()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->k:Landroid/content/Intent;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/amap/api/col/sl/d;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/d;->l:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/sl/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/sl/d;->l:I

    iget v0, p0, Lcom/amap/api/col/sl/d;->l:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/amap/api/col/sl/d;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/amap/api/col/sl/d;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/amap/api/col/sl/fq;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v0, 0xc

    invoke-direct {p0, v0, v4}, Lcom/amap/api/col/sl/d;->a(ILandroid/os/Bundle;)V

    iput-boolean v1, p0, Lcom/amap/api/col/sl/d;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/d;->g:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->A:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->r:Z

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->f()V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->q:Lcom/amap/api/col/sl/fv;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/fv;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fv;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->s:Lcom/amap/api/col/sl/e;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->s:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e;->b()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/sl/d;->i()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/amap/api/col/sl/d;->y:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/amap/api/col/sl/d;->d:Ljava/util/ArrayList;

    :cond_3
    iput-object v4, p0, Lcom/amap/api/col/sl/d;->E:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/d$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->w:Lcom/amap/api/col/sl/d$a;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    iput-object v4, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->b:Lcom/amap/api/col/sl/d$c;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/sl/d$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/i;->c()V

    iput-object v4, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->E:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->E:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/d$b;->quit()Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->m:Lcom/amap/api/col/sl/d$b;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/d$b;->quit()Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public disableBackgroundLocation(Z)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "j"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x400

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "disableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableBackgroundLocation(ILandroid/app/Notification;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "h"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x3ff

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "disableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->h:Lcom/amap/api/col/sl/i;

    invoke-virtual {v1}, Lcom/amap/api/col/sl/i;->b()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/d;->A:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    :cond_0
    const/16 v0, 0x3f3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/d;->n:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/h;

    iget-object v1, p0, Lcom/amap/api/col/sl/d;->z:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/sl/h;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/h;->a()V

    return-void
.end method

.method public startLocation()V
    .locals 4

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/d;->D:Lcom/amap/api/col/sl/h;

    :cond_0
    const/16 v0, 0x3f1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ed

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/col/sl/d;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
