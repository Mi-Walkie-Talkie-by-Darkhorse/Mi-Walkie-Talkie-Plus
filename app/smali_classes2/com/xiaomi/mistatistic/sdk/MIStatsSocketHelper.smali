.class public Lcom/xiaomi/mistatistic/sdk/MIStatsSocketHelper;
.super Ljava/lang/Object;
.source "MIStatsSocketHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/SocketAddress;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-direct {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    throw v0
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-direct {v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->addHttpEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    throw v0
.end method
