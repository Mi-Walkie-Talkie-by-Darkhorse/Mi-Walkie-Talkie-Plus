.class public final Lorg/apache/thrift/transport/c;
.super Lorg/apache/thrift/transport/d;


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/thrift/transport/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/thrift/transport/c;->c()I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/thrift/transport/c;->a:[B

    iget v1, p0, Lorg/apache/thrift/transport/c;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lorg/apache/thrift/transport/c;->a(I)V

    :cond_1
    return p3
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lorg/apache/thrift/transport/c;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/thrift/transport/c;->b:I

    return-void
.end method

.method public a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/thrift/transport/c;->c([BII)V

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/transport/c;->a:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/apache/thrift/transport/c;->b:I

    return v0
.end method

.method public b([BII)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lorg/apache/thrift/transport/c;->c:I

    iget v1, p0, Lorg/apache/thrift/transport/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c([BII)V
    .locals 1

    iput-object p1, p0, Lorg/apache/thrift/transport/c;->a:[B

    iput p2, p0, Lorg/apache/thrift/transport/c;->b:I

    add-int v0, p2, p3

    iput v0, p0, Lorg/apache/thrift/transport/c;->c:I

    return-void
.end method
