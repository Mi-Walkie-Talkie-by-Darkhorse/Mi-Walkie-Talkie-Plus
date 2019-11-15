.class public Lcom/xiaomi/push/service/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/m$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/xiaomi/push/service/m;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/accounts/AccountManager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/m$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/m;->b:Landroid/accounts/AccountManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/m;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/m;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/service/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/m;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/m;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/m$a;

    iget-object v2, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-interface {v0, p1, v2}, Lcom/xiaomi/push/service/m$a;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/n;-><init>(Lcom/xiaomi/push/service/m;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/f;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/m$a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/service/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIIDManager startMIIDUpdateListener failed cause lack of GET_ACCOUNTS permission"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/f;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/push/service/m;->d()V

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/push/service/m;->b:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/android/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/push/service/m;->e:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/push/service/m$a;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/m;->b()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/push/service/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/o;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/o;->a(Ljava/lang/String;)V

    const-string v0, "0"

    goto :goto_0
.end method
