.class public Lcom/xiaomi/push/service/ay;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/ay;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xiaomi/push/service/ay;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/push/service/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/service/ay;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/af;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v1, "requests can not be null in TinyDataHelper.transToThriftObj()."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "requests.length is 0 in TinyDataHelper.transToThriftObj()."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/xiaomi/xmpush/thrift/d;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/d;-><init>()V

    move v1, v2

    move v3, v2

    move-object v4, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/e;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v6

    array-length v6, v6

    if-le v6, p3, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TinyData is too big, ignore upload request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int v7, v3, v6

    if-le v7, p3, :cond_4

    new-instance v3, Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {}, Lcom/xiaomi/push/service/ay;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, p1}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v3, p2}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v7, Lcom/xiaomi/xmpush/thrift/p;->B:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/file/a;->a([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/af;->a([B)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/xiaomi/xmpush/thrift/d;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/d;-><init>()V

    move v3, v2

    :cond_4
    invoke-virtual {v4, v0}, Lcom/xiaomi/xmpush/thrift/d;->a(Lcom/xiaomi/xmpush/thrift/e;)V

    add-int/2addr v3, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/d;->a()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {}, Lcom/xiaomi/push/service/ay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/p;->B:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {v4}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/af;->a([B)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v0, v5

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/e;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TinyDataHelper.upload(Context, ClientUploadItem); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mipush_payload"

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/e;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/xmpush/thrift/e;->a(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->c(Z)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/e;->b(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Lcom/xiaomi/push/service/ay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/ay;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/e;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/xmpush/thrift/e;Z)Z
    .locals 4

    const/16 v3, 0x2800

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string v1, "item is null, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "item.channel is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "item.category is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "item.name is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "item.category can only contain ascii char, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "item.name can only contain ascii char, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.data is too large("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), max size for data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , verfiy ClientUploadDataItem failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
