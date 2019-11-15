.class public Lcom/xiaomi/mipush/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/StackTraceElement;


# direct methods
.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/xiaomi/mipush/sdk/a;->a:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/b;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/xiaomi/mipush/sdk/a;->a:[Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/mipush/sdk/a;->a:[Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-gt v1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/a;->a:[Ljava/lang/StackTraceElement;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, p0, 0x4

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/xiaomi/mipush/sdk/a;->a:[Ljava/lang/StackTraceElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/xiaomi/push/service/aj;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aj;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/f;->Z:Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/f;->a()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/aj;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "mipush_extra"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "last_upload_call_stack_timestamp"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v6, Lcom/xiaomi/xmpush/thrift/f;->aa:Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/f;->a()I

    move-result v6

    const v7, 0x15180

    invoke-virtual {v1, v6, v7}, Lcom/xiaomi/push/service/aj;->a(II)I

    move-result v1

    const/16 v6, 0x3c

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 4

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_call_stack_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
