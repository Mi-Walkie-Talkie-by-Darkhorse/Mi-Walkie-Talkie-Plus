.class public Lcom/ksyun/ks3/model/d;
.super Ljava/lang/Object;
.source "PartETag.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ksyun/ks3/model/d;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/ks3/model/d;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/model/d;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/ks3/model/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/ksyun/ks3/model/d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ksyun/ks3/model/d;->a:I

    move-object v0, p1

    check-cast v0, Lcom/ksyun/ks3/model/d;

    iget v0, v0, Lcom/ksyun/ks3/model/d;->a:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/ks3/model/d;->b:Ljava/lang/String;

    check-cast p1, Lcom/ksyun/ks3/model/d;

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/ksyun/ks3/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/ksyun/ks3/model/d;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ksyun/ks3/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
