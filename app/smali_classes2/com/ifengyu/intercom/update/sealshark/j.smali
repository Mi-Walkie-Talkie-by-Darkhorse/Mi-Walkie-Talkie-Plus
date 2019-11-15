.class public Lcom/ifengyu/intercom/update/sealshark/j;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static volatile a:Lcom/ifengyu/intercom/update/sealshark/j;


# instance fields
.field private b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/update/sealshark/j;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/update/sealshark/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/j;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/sealshark/j;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/update/sealshark/j;->a:Lcom/ifengyu/intercom/update/sealshark/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/sealshark/j;->b:Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/ifengyu/intercom/update/sealshark/UpdateHelper;->a(ILjava/lang/String;Lcom/ifengyu/intercom/update/sealshark/UpdateHelper$b;)V

    return-void
.end method
