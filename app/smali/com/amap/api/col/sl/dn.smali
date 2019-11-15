.class public Lcom/amap/api/col/sl/dn;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/sl/dn$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/sl/dn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/sl/dn;
    .locals 1

    sget-object v0, Lcom/amap/api/col/sl/dn;->a:Lcom/amap/api/col/sl/dn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/dn;

    invoke-direct {v0}, Lcom/amap/api/col/sl/dn;-><init>()V

    sput-object v0, Lcom/amap/api/col/sl/dn;->a:Lcom/amap/api/col/sl/dn;

    :cond_0
    sget-object v0, Lcom/amap/api/col/sl/dn;->a:Lcom/amap/api/col/sl/dn;

    return-object v0
.end method

.method public static a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/sl/dn;->c(Lcom/amap/api/col/sl/ds;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/amap/api/col/sl/dq;

    iget v1, p0, Lcom/amap/api/col/sl/ds;->f:I

    iget v3, p0, Lcom/amap/api/col/sl/ds;->g:I

    invoke-direct {v2, v1, v3, v0, p1}, Lcom/amap/api/col/sl/dq;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->e()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->e()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->b()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/sl/dq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/amap/api/col/sl/ca;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v1, v3, v0}, Lcom/amap/api/col/sl/dq;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/col/sl/du;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/ds;->h:Ljava/net/Proxy;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/amap/api/col/sl/dq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/amap/api/col/sl/ds;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/sl/dn;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/du;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Lcom/amap/api/col/sl/ds;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/amap/api/col/sl/ds;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public b(Lcom/amap/api/col/sl/ds;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/sl/bo;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/col/sl/dn;->a(Lcom/amap/api/col/sl/ds;Z)Lcom/amap/api/col/sl/du;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/col/sl/du;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "bm"

    const-string v2, "msp"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/sl/bo;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/col/sl/bo;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
