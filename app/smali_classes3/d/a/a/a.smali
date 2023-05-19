.class public Ld/a/a/a;
.super Ljava/lang/Object;
.source "Interval.java"

# interfaces
.implements Ld/a/a/b;


# instance fields
.field private a:I

.field private b:I


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Ld/a/a/a;->b:I

    iget v1, p0, Ld/a/a/a;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    instance-of v0, p1, Ld/a/a/b;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    check-cast p1, Ld/a/a/b;

    .line 3
    iget v0, p0, Ld/a/a/a;->a:I

    invoke-interface {p1}, Ld/a/a/b;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Ld/a/a/a;->b:I

    invoke-interface {p1}, Ld/a/a/b;->getEnd()I

    move-result p1

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ld/a/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ld/a/a/b;

    .line 3
    iget v0, p0, Ld/a/a/a;->a:I

    invoke-interface {p1}, Ld/a/a/b;->getStart()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Ld/a/a/a;->b:I

    .line 4
    invoke-interface {p1}, Ld/a/a/b;->getEnd()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Ld/a/a/a;->b:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 1
    iget v0, p0, Ld/a/a/a;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ld/a/a/a;->a:I

    rem-int/lit8 v0, v0, 0x64

    iget v1, p0, Ld/a/a/a;->b:I

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ld/a/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/a/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
