.class Lorg/bouncycastle/crypto/tls/DTLSReassembler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;
    }
.end annotation


# instance fields
.field private final body:[B

.field private missing:Ljava/util/Vector;

.field private final msg_type:S


# direct methods
.method constructor <init>(SI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    iput-short p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method contributeFragment(SI[BIII)V
    .locals 8

    const/4 v1, 0x0

    add-int v2, p5, p6

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v0, v0

    if-ne v0, p2, :cond_0

    if-le v2, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p6, :cond_4

    if-nez p5, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v3

    if-le v3, p5, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v3

    invoke-static {v3, p5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    add-int v6, p4, v3

    sub-int/2addr v6, p5

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    invoke-static {p3, v6, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v5

    if-ne v3, v5, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v3

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v1, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v3

    if-lt v3, v2, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->setStart(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v5

    if-eq v4, v5, :cond_7

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v6, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v6, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_7
    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->setEnd(I)V

    goto :goto_1
.end method

.method getBodyIfComplete()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMsgType()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->msg_type:S

    return v0
.end method

.method reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
