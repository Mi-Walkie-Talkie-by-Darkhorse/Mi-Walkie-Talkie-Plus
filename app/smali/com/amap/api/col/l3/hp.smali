.class final Lcom/amap/api/col/l3/hp;
.super Lcom/amap/api/col/l3/ic;


# instance fields
.field private a:Lcom/amap/api/col/l3/hg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/hg;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/ic;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/hp;->a:Lcom/amap/api/col/l3/hg;

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

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/hp;->a:Lcom/amap/api/col/l3/hg;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
