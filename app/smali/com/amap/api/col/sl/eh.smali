.class public final Lcom/amap/api/col/sl/eh;
.super Lcom/amap/api/col/sl/ek;
.source "LogJsonDataStrategy.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ek;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/eh;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/ek;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/ek;-><init>(Lcom/amap/api/col/sl/ek;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/eh;->b:Z

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ca;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ek;->d:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/sl/eh;->b:Z

    iget-object v1, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final b([B)V
    .locals 3

    invoke-static {p1}, Lcom/amap/api/col/sl/ca;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/sl/eh;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/sl/eh;->b:Z

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    const-string v2, "{\"log\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/sl/eh;->a:Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
