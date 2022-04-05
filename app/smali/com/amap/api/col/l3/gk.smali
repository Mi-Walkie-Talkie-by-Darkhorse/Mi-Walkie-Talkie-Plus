.class public final Lcom/amap/api/col/l3/gk;
.super Lcom/amap/api/col/l3/gm;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3/gm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/gm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/gm;-><init>(Lcom/amap/api/col/l3/gm;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amap/api/col/l3/gi;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/gi;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
