.class public Lcom/huawei/hms/scankit/p/ga;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/ga$a;
    }
.end annotation


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/ga;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/ga;
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/ga;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/ga;->a:Lcom/huawei/hms/scankit/p/ga;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/ga;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/ga;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/ga;->a:Lcom/huawei/hms/scankit/p/ga;

    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/ga;->a:Lcom/huawei/hms/scankit/p/ga;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/ea;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/ga$a;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/scankit/p/ga$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/ha;->a(Landroid/content/Context;)Lcom/huawei/hms/scankit/p/ea;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    const-string v1, "global_v2"

    const-string v2, "uuid"

    invoke-static {p1, v1, v2, v0}, Lcom/huawei/hms/scankit/p/da;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/b;->a(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/E;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/E;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/ia;->g(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/E;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/B;->a()Lcom/huawei/hms/scankit/p/B;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/B;->c()Lcom/huawei/hms/scankit/p/E;

    move-result-object p2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/E;->d(Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance p1, Landroid/util/Pair;

    const-string p2, ""

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/p/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ga;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/scankit/p/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/c;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
