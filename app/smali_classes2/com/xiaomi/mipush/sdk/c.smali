.class public Lcom/xiaomi/mipush/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/mipush/sdk/c$a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/c;->n()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/c;->a:Lcom/xiaomi/mipush/sdk/c;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "mipush"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "appId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "appToken"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "regId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "regSec"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "devId"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    const-string v2, "a-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "devId"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v3, v3, Lcom/xiaomi/mipush/sdk/c$a;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "vName"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "valid"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "paused"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->i:Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "envType"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/xiaomi/mipush/sdk/c$a;->j:I

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    const-string v2, "regResource"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/mipush/sdk/c$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/c$a;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "envType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/c$a;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/c$a;->a(Lcom/xiaomi/mipush/sdk/c$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hybrid_app_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/c$a;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "paused"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/android/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c$a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Don\'t send message before initialization succeeded!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->b()V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->c()V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->i:Z

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->j:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/c;->c:Lcom/xiaomi/mipush/sdk/c$a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
