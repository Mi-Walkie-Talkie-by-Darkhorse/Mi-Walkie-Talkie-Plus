.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;
.super Ljava/lang/Object;
.source "SealSharkUpdateManager.java"


# static fields
.field private static volatile b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

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
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-direct {v0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/i;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p4, p5}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->B(ILjava/lang/String;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;)V

    return-void
.end method
