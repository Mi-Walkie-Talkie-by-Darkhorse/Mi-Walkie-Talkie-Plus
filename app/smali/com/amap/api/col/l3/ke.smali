.class public final Lcom/amap/api/col/l3/ke;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/amap/api/col/l3/jh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/ke;->a:J

    iput-wide v0, p0, Lcom/amap/api/col/l3/ke;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ke;->c:Lcom/amap/api/col/l3/jh;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3/ke;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3/ke;->a:J

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ke;->c:Lcom/amap/api/col/l3/jh;

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3/ke;->b:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3/ke;->b:J

    return-void
.end method

.method public final c()Lcom/amap/api/col/l3/jh;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/ke;->c:Lcom/amap/api/col/l3/jh;

    return-object v0
.end method
