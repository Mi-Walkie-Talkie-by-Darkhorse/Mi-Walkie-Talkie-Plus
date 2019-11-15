.class public abstract Lcom/amap/api/mapcore/util/hv;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field h:I

.field i:I

.field j:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/hv;->h:I

    iput v0, p0, Lcom/amap/api/mapcore/util/hv;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/hv;->j:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/hv;->h:I

    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/hv;->j:Ljava/net/Proxy;

    return-void
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/hv;->i:I

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public g()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->g()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/hs;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method n()[B
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->g()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/hv;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/hs;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/fy;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method
