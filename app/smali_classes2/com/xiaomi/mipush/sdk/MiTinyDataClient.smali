.class public Lcom/xiaomi/mipush/sdk/MiTinyDataClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;
    }
.end annotation


# static fields
.field public static final PENDING_REASON_APPID:Ljava/lang/String; = "com.xiaomi.xmpushsdk.tinydataPending.appId"

.field public static final PENDING_REASON_CHANNEL:Ljava/lang/String; = "com.xiaomi.xmpushsdk.tinydataPending.channel"

.field public static final PENDING_REASON_INIT:Ljava/lang/String; = "com.xiaomi.xmpushsdk.tinydataPending.init"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "context is null, MiTinyDataClient.init(Context, String) failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "channel is null or empty, MiTinyDataClient.init(Context, String) failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static upload(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/e;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient.upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Lcom/xiaomi/xmpush/thrift/e;)Z

    move-result v0

    return v0
.end method

.method public static upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/e;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/xmpush/thrift/e;->a(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->c(Z)Lcom/xiaomi/xmpush/thrift/e;

    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient;->upload(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/e;)Z

    move-result v0

    return v0
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/xmpush/thrift/e;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/xmpush/thrift/e;->a(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p4}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Lcom/xiaomi/xmpush/thrift/e;)Z

    move-result v0

    return v0
.end method
