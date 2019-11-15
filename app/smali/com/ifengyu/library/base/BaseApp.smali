.class public Lcom/ifengyu/library/base/BaseApp;
.super Landroid/app/Application;
.source "BaseApp.java"


# static fields
.field protected static c:Lcom/ifengyu/library/base/BaseApp;

.field protected static d:Ljava/lang/Thread;

.field protected static e:J

.field protected static f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static l()Lcom/ifengyu/library/base/BaseApp;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/base/BaseApp;->c:Lcom/ifengyu/library/base/BaseApp;

    return-object v0
.end method

.method public static m()J
    .locals 2

    sget-wide v0, Lcom/ifengyu/library/base/BaseApp;->e:J

    return-wide v0
.end method

.method public static n()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/base/BaseApp;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/ifengyu/library/base/BaseApp;->c:Lcom/ifengyu/library/base/BaseApp;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/base/BaseApp;->d:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/ifengyu/library/base/BaseApp;->e:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ifengyu/library/base/BaseApp;->f:Landroid/os/Handler;

    return-void
.end method
