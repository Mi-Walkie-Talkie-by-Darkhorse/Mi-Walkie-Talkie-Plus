.class public Lcom/xiaomi/tinyData/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/tinyData/d;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/tinyData/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/tinyData/d;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/tinyData/d;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/tinyData/d;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/xiaomi/tinyData/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/tinyData/d;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/tinyData/d;->a:Lcom/xiaomi/tinyData/d;

    if-nez v0, :cond_2

    const-class v1, Lcom/xiaomi/tinyData/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/tinyData/d;->a:Lcom/xiaomi/tinyData/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/tinyData/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/tinyData/d;->a:Lcom/xiaomi/tinyData/d;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/xiaomi/tinyData/d;->a:Lcom/xiaomi/tinyData/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/xiaomi/tinyData/e;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "[TinyDataManager]: please do not add null mUploader to TinyDataManager."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/tinyData/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/a;-><init>(Lcom/xiaomi/tinyData/d;)V

    iput-object p2, v0, Lcom/xiaomi/tinyData/a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/tinyData/a;->a:Lcom/xiaomi/tinyData/e;

    iget-object v1, p0, Lcom/xiaomi/tinyData/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/xiaomi/xmpush/thrift/e;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/tinyData/d;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/tinyData/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object p2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/tinyData/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/b;-><init>(Lcom/xiaomi/tinyData/d;)V

    iput-object p1, v0, Lcom/xiaomi/tinyData/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/tinyData/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()Lcom/xiaomi/tinyData/e;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->c:Ljava/util/Map;

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/tinyData/e;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->c:Ljava/util/Map;

    const-string v1, "UPLOADER_HTTP"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/tinyData/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/e;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pkgName is null or empty, upload ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v0}, Lcom/xiaomi/push/service/ay;->a(Lcom/xiaomi/xmpush/thrift/e;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/xiaomi/tinyData/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/c;-><init>(Lcom/xiaomi/tinyData/d;)V

    iput-object p1, v0, Lcom/xiaomi/tinyData/c;->b:Lcom/xiaomi/xmpush/thrift/e;

    iput-object p2, v0, Lcom/xiaomi/tinyData/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/tinyData/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/misc/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/channel/commonutils/misc/g;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/tinyData/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/tinyData/d;->e:Ljava/util/HashMap;

    return-object v0
.end method
