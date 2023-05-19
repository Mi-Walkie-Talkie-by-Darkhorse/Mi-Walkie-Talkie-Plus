.class public Lcom/ifengyu/blelib/c/e;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/blelib/c/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/blelib/c/e$a;

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ifengyu/blelib/c/e$a;

    invoke-direct {v0}, Lcom/ifengyu/blelib/c/e$a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    const/4 v1, -0x2

    .line 3
    iput-byte v1, v0, Lcom/ifengyu/blelib/c/e$a;->a:B

    const/4 v1, 0x1

    .line 4
    iput-byte v1, v0, Lcom/ifengyu/blelib/c/e$a;->b:B

    .line 5
    array-length v1, p2

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/ifengyu/blelib/c/e$a;->c:I

    .line 6
    iput p1, v0, Lcom/ifengyu/blelib/c/e$a;->d:I

    .line 7
    invoke-static {}, Lcom/ifengyu/blelib/a/a;->a()Lcom/ifengyu/blelib/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/blelib/a/a;->b()I

    move-result p1

    iput p1, v0, Lcom/ifengyu/blelib/c/e$a;->e:I

    .line 8
    iput-object p2, p0, Lcom/ifengyu/blelib/c/e;->b:[B

    return-void
.end method

.method private a([BI)[B
    .locals 3

    add-int/lit8 v0, p2, 0x2

    .line 1
    new-array v0, v0, [B

    .line 2
    invoke-static {p1}, Lcom/ifengyu/blelib/c/b;->b([B)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x2

    .line 4
    invoke-static {v1, v2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object v1, p0, Lcom/ifengyu/blelib/c/e;->c:[B

    return-object v0
.end method

.method private d()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/blelib/c/e;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 2
    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e$a;->c()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e$a;->e()B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 4
    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e$a;->b()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/ifengyu/blelib/c/f;->i([BJII)V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e$a;->a()I

    move-result v1

    int-to-long v1, v1

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v4, v3}, Lcom/ifengyu/blelib/c/f;->i([BJII)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v1}, Lcom/ifengyu/blelib/c/e$a;->d()I

    move-result v1

    int-to-long v1, v1

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v4, v3}, Lcom/ifengyu/blelib/c/f;->i([BJII)V

    return-object v0
.end method


# virtual methods
.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/c/e;->b:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/blelib/c/e;->b:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()[B
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/blelib/c/e;->d()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/blelib/c/e;->b()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/blelib/c/e;->c()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/blelib/c/e;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packet{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->a:Lcom/ifengyu/blelib/c/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->b:[B

    .line 2
    invoke-static {v1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/blelib/c/e;->c:[B

    .line 3
    invoke-static {v1}, Lcom/ifengyu/blelib/c/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
