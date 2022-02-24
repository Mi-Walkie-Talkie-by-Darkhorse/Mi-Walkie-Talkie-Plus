.class public Lcom/ifengyu/intercom/update/sealshark/j;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static volatile b:Lcom/ifengyu/intercom/update/sealshark/j;


# instance fields
.field private a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/update/sealshark/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/update/sealshark/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/update/sealshark/j;

    invoke-direct {v1}, Lcom/ifengyu/intercom/update/sealshark/j;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p3, p4}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(ILjava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$e;)V

    return-void
.end method
