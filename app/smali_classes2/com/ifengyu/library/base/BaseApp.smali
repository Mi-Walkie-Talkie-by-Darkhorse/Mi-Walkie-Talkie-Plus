.class public Lcom/ifengyu/library/base/BaseApp;
.super Landroid/app/Application;
.source "BaseApp.java"


# static fields
.field protected static a:Lcom/ifengyu/library/base/BaseApp;

.field protected static b:J

.field protected static c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/base/BaseApp;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lcom/ifengyu/library/base/BaseApp;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/base/BaseApp;->a:Lcom/ifengyu/library/base/BaseApp;

    return-object v0
.end method

.method public static c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/ifengyu/library/base/BaseApp;->b:J

    return-wide v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/ifengyu/library/base/BaseApp;->a:Lcom/ifengyu/library/base/BaseApp;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/ifengyu/library/base/BaseApp;->b:J

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ifengyu/library/base/BaseApp;->c:Landroid/os/Handler;

    return-void
.end method
