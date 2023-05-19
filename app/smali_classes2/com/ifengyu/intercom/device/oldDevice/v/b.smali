.class public Lcom/ifengyu/intercom/device/oldDevice/v/b;
.super Ljava/lang/Object;
.source "OldBleDeviceDbManager.java"


# static fields
.field private static a:Lcom/ifengyu/intercom/device/oldDevice/v/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/device/oldDevice/v/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a:Lcom/ifengyu/intercom/device/oldDevice/v/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ifengyu/intercom/i/t0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a:Lcom/ifengyu/intercom/device/oldDevice/v/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/v/b;

    invoke-direct {v1}, Lcom/ifengyu/intercom/device/oldDevice/v/b;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a:Lcom/ifengyu/intercom/device/oldDevice/v/b;

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
    sget-object v0, Lcom/ifengyu/intercom/device/oldDevice/v/b;->a:Lcom/ifengyu/intercom/device/oldDevice/v/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldBleDeviceDbManager"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v6, Lcom/ifengyu/intercom/device/oldDevice/v/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceType()I

    move-result v4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->getDeviceColor()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/device/oldDevice/v/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/DeviceModel;->isConnected()Z

    move-result p1

    invoke-virtual {v6, p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->g(Z)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public c(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveConnectionConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OldBleDeviceDbManager"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/database/AppDatabase;->F()Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-direct {v1}, Lcom/ifengyu/intercom/models/DeviceModel;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 13
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/e;->j(Lcom/ifengyu/intercom/models/DeviceModel;)J

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setAddress(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceType(I)V

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setConnected(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/v/a;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/models/DeviceModel;->setDeviceColor(I)V

    .line 20
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getCreateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setCreateTime(J)V

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/models/DeviceModel;->setUpdateTime(J)V

    .line 23
    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    :goto_0
    return-void
.end method
