.class public final Lcom/amap/api/col/l3/hz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/hz$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/col/l3/ia;

.field private b:Lcom/amap/api/col/l3/ic;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/ic;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/l3/hz;-><init>(Lcom/amap/api/col/l3/ic;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/ic;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/l3/hz;-><init>(Lcom/amap/api/col/l3/ic;JJB)V

    return-void
.end method

.method private constructor <init>(Lcom/amap/api/col/l3/ic;JJB)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    iget-object p1, p1, Lcom/amap/api/col/l3/ic;->j:Ljava/net/Proxy;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance p6, Lcom/amap/api/col/l3/ia;

    iget-object v0, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    iget v1, v0, Lcom/amap/api/col/l3/ic;->h:I

    iget v0, v0, Lcom/amap/api/col/l3/ic;->i:I

    const/4 v2, 0x0

    invoke-direct {p6, v1, v0, p1, v2}, Lcom/amap/api/col/l3/ia;-><init>(IILjava/net/Proxy;Z)V

    iput-object p6, p0, Lcom/amap/api/col/l3/hz;->a:Lcom/amap/api/col/l3/ia;

    invoke-virtual {p6, p4, p5}, Lcom/amap/api/col/l3/ia;->b(J)V

    iget-object p1, p0, Lcom/amap/api/col/l3/hz;->a:Lcom/amap/api/col/l3/ia;

    invoke-virtual {p1, p2, p3}, Lcom/amap/api/col/l3/ia;->a(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/hz;->a:Lcom/amap/api/col/l3/ia;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ia;->a()V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/hz$a;)V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/l3/hz;->a:Lcom/amap/api/col/l3/ia;

    iget-object v1, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ic;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ic;->m()Z

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/ic;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/ic;->a()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/ic;->b()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/col/l3/hz;->b:Lcom/amap/api/col/l3/ic;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ic;->f()[B

    move-result-object v6

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/l3/ia;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[BLcom/amap/api/col/l3/hz$a;)V

    return-void
.end method
