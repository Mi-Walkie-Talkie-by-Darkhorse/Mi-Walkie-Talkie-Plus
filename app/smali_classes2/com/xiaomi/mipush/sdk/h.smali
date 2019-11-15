.class public Lcom/xiaomi/mipush/sdk/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:D

.field private c:Lcom/xiaomi/metoknlp/geofencing/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/h;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/h;->b:D

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/h;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/h;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/h;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/h;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "mipush_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "geo_need_refresh"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/h;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/xiaomi/push/service/e;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/mipush/sdk/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/k;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaomi/channel/commonutils/android/b;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/h;->a(Lcom/xiaomi/xmpush/thrift/k;)Z

    goto :goto_1

    :cond_2
    const-string v0, "mipush_extra"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "geo_need_refresh"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/h;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/h;->d:Landroid/content/Context;

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/k;)Z
    .locals 12

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->m()Lcom/xiaomi/xmpush/thrift/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->o()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->m()Lcom/xiaomi/xmpush/thrift/m;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/h;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/h;->d:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/m;->c()D

    move-result-wide v2

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/m;->a()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->o()D

    move-result-wide v6

    double-to-float v6, v6

    const-wide/16 v7, -0x1

    const-string v9, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/k;->s()Lcom/xiaomi/xmpush/thrift/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/xmpush/thrift/i;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v0 .. v11}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
