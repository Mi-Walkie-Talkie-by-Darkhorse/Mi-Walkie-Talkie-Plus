.class public Lcom/xiaomi/stats/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/h$a;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/thrift/a;->c:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v0}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v0

    sput v0, Lcom/xiaomi/stats/h;->a:I

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/h;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/stats/h;->a(II)V

    return-void
.end method

.method public static a(I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/thrift/a;->ac:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    return-void
.end method

.method public static declared-synchronized a(II)V
    .locals 6

    const-class v1, Lcom/xiaomi/stats/h;

    monitor-enter v1

    const v0, 0xffffff

    if-ge p1, v0, :cond_0

    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    :try_start_0
    sget-object v2, Lcom/xiaomi/stats/h$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stats key should less than 16777215"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(IIILjava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v0

    int-to-byte v1, p0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(B)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/thrift/b;->b(I)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    return-void
.end method

.method public static declared-synchronized a(IILjava/lang/String;I)V
    .locals 8

    const-class v1, Lcom/xiaomi/stats/h;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    sget-object v4, Lcom/xiaomi/stats/h$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    sget-object v5, Lcom/xiaomi/stats/h$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/thrift/b;->b(I)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v4, p2}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    invoke-virtual {v4, p3}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    :cond_0
    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    sget-object v0, Lcom/xiaomi/stats/h$a;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, "stats key not found"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/am$b;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/stats/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stats/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/am$b;)V

    invoke-virtual {v0}, Lcom/xiaomi/stats/a;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v0

    if-lez p1, :cond_0

    sget-object v1, Lcom/xiaomi/push/thrift/a;->i:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/thrift/b;->b(I)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/stats/d;->a(Ljava/lang/Exception;)Lcom/xiaomi/stats/d$a;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/stats/d$a;->a:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget-object v1, v1, Lcom/xiaomi/stats/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/d;->b(Ljava/lang/Exception;)Lcom/xiaomi/stats/d$a;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/stats/d$a;->a:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget-object v0, v0, Lcom/xiaomi/stats/d$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/h;->a:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stats/h;->a(IILjava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/d;->d(Ljava/lang/Exception;)Lcom/xiaomi/stats/d$a;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/stats/d$a;->a:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget-object v0, v0, Lcom/xiaomi/stats/d$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-virtual {v1, p0}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stats/f;->a(Lcom/xiaomi/push/thrift/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()[B
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/stats/f;->a()Lcom/xiaomi/stats/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/f;->e()Lcom/xiaomi/push/thrift/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method
