.class public final Lcom/amap/api/mapcore/util/jb;
.super Lcom/amap/api/mapcore/util/hq;
.source "LocationRequest.java"


# instance fields
.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/hq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/jb;->c:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore/util/jb;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/jb;->e:[B

    iput-object v1, p0, Lcom/amap/api/mapcore/util/jb;->f:[B

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/jb;->g:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/jb;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/jb;->l:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/jb;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/jb;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/jb;->l:Ljava/util/Map;

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/jb;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/jb;->c:Ljava/util/Map;

    return-void
.end method

.method public final b([B)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/jb;->e:[B

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/jb;->g:Z

    return-void
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->e:[B

    return-object v0
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->f:[B

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/jb;->g:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/jb;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/jb;->m:Z

    return v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/jb;->m:Z

    return-void
.end method
