.class public Lcom/xiaomi/push/jz;
.super Lcom/xiaomi/push/kb;


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/jj;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/kb;-><init>()V

    new-instance v0, Lcom/xiaomi/push/jj;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/jj;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    invoke-virtual {v0}, Lcom/xiaomi/push/jj;->a()[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    invoke-virtual {v1}, Lcom/xiaomi/push/jj;->a()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/push/jz;->a:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_0

    iget-object p3, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    invoke-virtual {p3}, Lcom/xiaomi/push/jj;->a()I

    move-result p3

    iget v1, p0, Lcom/xiaomi/push/jz;->a:I

    sub-int/2addr p3, v1

    :cond_0
    if-lez p3, :cond_1

    iget v1, p0, Lcom/xiaomi/push/jz;->a:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/xiaomi/push/jz;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/xiaomi/push/jz;->a:I

    :cond_1
    return p3
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public a_()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/jz;->a:Lcom/xiaomi/push/jj;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method
