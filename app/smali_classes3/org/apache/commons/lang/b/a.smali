.class public Lorg/apache/commons/lang/b/a;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:[C

.field protected b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/lang/b/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    .line 3
    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang/b/a;->a:[C

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lorg/apache/commons/lang/b/a;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang/b/a;->c()Lorg/apache/commons/lang/b/a;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/b/a;->b(Ljava/lang/String;)Lorg/apache/commons/lang/b/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lorg/apache/commons/lang/b/a;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang/b/a;->c()Lorg/apache/commons/lang/b/a;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang/b/a;->f()I

    move-result v1

    add-int v2, v1, v0

    .line 4
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/b/a;->d(I)Lorg/apache/commons/lang/b/a;

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/apache/commons/lang/b/a;->a:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    iget p1, p0, Lorg/apache/commons/lang/b/a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang/b/a;->b:I

    :cond_1
    return-object p0
.end method

.method public c()Lorg/apache/commons/lang/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang/b/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/b/a;->b(Ljava/lang/String;)Lorg/apache/commons/lang/b/a;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/b/a;

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang/b/a;->a:[C

    array-length v1, v1

    new-array v1, v1, [C

    iput-object v1, v0, Lorg/apache/commons/lang/b/a;->a:[C

    .line 3
    iget-object v2, p0, Lorg/apache/commons/lang/b/a;->a:[C

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public d(I)Lorg/apache/commons/lang/b/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang/b/a;->a:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 2
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang/b/a;->a:[C

    .line 3
    iget v1, p0, Lorg/apache/commons/lang/b/a;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public e(Lorg/apache/commons/lang/b/a;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/b/a;->b:I

    iget v2, p1, Lorg/apache/commons/lang/b/a;->b:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang/b/a;->a:[C

    .line 3
    iget-object p1, p1, Lorg/apache/commons/lang/b/a;->a:[C

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4
    aget-char v4, v2, v1

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/commons/lang/b/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/apache/commons/lang/b/a;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/b/a;->e(Lorg/apache/commons/lang/b/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang/b/a;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang/b/a;->a:[C

    .line 2
    iget v1, p0, Lorg/apache/commons/lang/b/a;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    aget-char v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang/b/a;->a:[C

    iget v2, p0, Lorg/apache/commons/lang/b/a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
