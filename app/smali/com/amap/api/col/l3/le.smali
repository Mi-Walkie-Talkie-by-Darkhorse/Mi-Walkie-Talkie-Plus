.class public final Lcom/amap/api/col/l3/le;
.super Lcom/amap/api/col/l3/hy;
.source "LocationRequest.java"


# instance fields
.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:[B

.field f:[B

.field g:Z

.field k:Ljava/lang/String;

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/hy;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/le;->c:Ljava/util/Map;

    const-string p2, ""

    iput-object p2, p0, Lcom/amap/api/col/l3/le;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3/le;->e:[B

    iput-object p1, p0, Lcom/amap/api/col/l3/le;->f:[B

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3/le;->g:Z

    iput-object p1, p0, Lcom/amap/api/col/l3/le;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/l3/le;->l:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amap/api/col/l3/le;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->e:[B

    return-object v0
.end method

.method public final g()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->f:[B

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/le;->g:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/le;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/le;->m:Z

    return v0
.end method
