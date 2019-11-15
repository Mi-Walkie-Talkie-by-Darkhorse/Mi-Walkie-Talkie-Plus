.class final Lcom/xiaomi/mipush/sdk/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/ae;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "do sync info"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/af;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiPushClient;->generatePacketID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/xiaomi/xmpush/thrift/af;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    sget-object v0, Lcom/xiaomi/xmpush/thrift/p;->v:Lcom/xiaomi/xmpush/thrift/p;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/p;->T:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/af;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/af;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "app_version"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/channel/commonutils/android/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "app_version_code"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/channel/commonutils/android/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "push_sdk_vn"

    const-string v4, "3_4_5"

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "push_sdk_vc"

    const/16 v4, 0x76c5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "token"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/android/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v4, "imei_md5"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "reg_id"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "reg_secret"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAcceptTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v3, "accept_time"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ae;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "aliases_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "topics_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "accounts_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    return-void

    :cond_1
    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "aliases"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllAlias(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "topics"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllTopic(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/xmpush/thrift/af;->h:Ljava/util/Map;

    const-string v2, "user_accounts"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ae;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getAllUserAccount(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ad;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
