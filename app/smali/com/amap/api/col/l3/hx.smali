.class public Lcom/amap/api/col/l3/hx;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/hx$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/amap/api/col/l3/hx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3/hx;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/hx;->c:Lcom/amap/api/col/l3/hx;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/hx;

    invoke-direct {v0}, Lcom/amap/api/col/l3/hx;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/hx;->c:Lcom/amap/api/col/l3/hx;

    .line 3
    :cond_0
    sget-object v0, Lcom/amap/api/col/l3/hx;->c:Lcom/amap/api/col/l3/hx;

    return-object v0
.end method

.method public static a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/col/l3/hx;->c(Lcom/amap/api/col/l3/ic;)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/ic;->j:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 10
    :cond_0
    new-instance v1, Lcom/amap/api/col/l3/ia;

    iget v2, p0, Lcom/amap/api/col/l3/ic;->h:I

    iget v3, p0, Lcom/amap/api/col/l3/ic;->i:I

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/amap/api/col/l3/ia;-><init>(IILjava/net/Proxy;Z)V

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->f()[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->b()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/amap/api/col/l3/ia;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->m()Z

    move-result v3

    .line 13
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->l()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->a()Ljava/util/Map;

    move-result-object v5

    .line 15
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->f()[B

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->b()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/ia;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object p0

    move-object v6, p0

    goto :goto_2

    :cond_5
    move-object v6, p1

    .line 16
    :goto_2
    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/col/l3/ie;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string p1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 19
    throw p0
.end method

.method public static a(Lcom/amap/api/col/l3/ic;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-static {p0, v0}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/amap/api/col/l3/ie;->a:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 6
    :catchall_0
    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 7
    throw p0
.end method

.method protected static c(Lcom/amap/api/col/l3/ic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string v0, "request url is empty"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Lcom/amap/api/col/l3/fv;

    const-string v0, "requeust is null"

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Lcom/amap/api/col/l3/ic;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/col/l3/fv;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;Z)Lcom/amap/api/col/l3/ie;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/col/l3/fv; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/amap/api/col/l3/ie;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "bm"

    const-string v1, "msp"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/amap/api/col/l3/fv;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fv;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method
