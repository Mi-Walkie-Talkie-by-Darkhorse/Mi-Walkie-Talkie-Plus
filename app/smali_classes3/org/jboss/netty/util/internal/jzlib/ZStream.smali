.class public final Lorg/jboss/netty/util/internal/jzlib/ZStream;
.super Ljava/lang/Object;
.source "ZStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/jzlib/ZStream$1;
    }
.end annotation


# instance fields
.field adler:J

.field public avail_in:I

.field public avail_out:I

.field crc32:I

.field dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

.field istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I

.field public total_in:J

.field public total_out:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deflate(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto :goto_0
.end method

.method public deflateEnd()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateEnd()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    goto :goto_0
.end method

.method public deflateInit(I)I
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(II)I

    move-result v0

    return v0
.end method

.method public deflateInit(II)I
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateInit(IIILjava/lang/Enum;)I
    .locals 6

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Deflate;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    move-object v5, p4

    check-cast v5, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;IIILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method public deflateInit(IILjava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Enum",
            "<*>;)I"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateInit(ILjava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Enum",
            "<*>;)I"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public deflateParams(II)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateParams(Lorg/jboss/netty/util/internal/jzlib/ZStream;II)I

    move-result v0

    goto :goto_0
.end method

.method public deflateSetDictionary([BI)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Deflate;->deflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I

    move-result v0

    goto :goto_0
.end method

.method flush_pending()V
    .locals 6

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v3, v3, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v3, v3, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avail_out="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v1, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_buf:[B

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    iget-object v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    iget-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_out:J

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v2, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    sub-int v0, v2, v0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget v0, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    const/4 v1, 0x0

    iput v1, v0, Lorg/jboss/netty/util/internal/jzlib/Deflate;->pending_out:I

    goto/16 :goto_0
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    return-void
.end method

.method public inflate(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflate(Lorg/jboss/netty/util/internal/jzlib/ZStream;I)I

    move-result v0

    goto :goto_0
.end method

.method public inflateEnd()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateEnd(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    goto :goto_0
.end method

.method public inflateInit()I
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(I)I

    move-result v0

    return v0
.end method

.method public inflateInit(I)I
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ZLIB:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(ILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public inflateInit(ILjava/lang/Enum;)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    check-cast p2, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateInit(Lorg/jboss/netty/util/internal/jzlib/ZStream;ILorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;)I

    move-result v0

    return v0
.end method

.method public inflateInit(Ljava/lang/Enum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)I"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->inflateInit(ILjava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public inflateSetDictionary([BI)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateSetDictionary(Lorg/jboss/netty/util/internal/jzlib/ZStream;[BI)I

    move-result v0

    goto :goto_0
.end method

.method public inflateSync()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->istate:Lorg/jboss/netty/util/internal/jzlib/Inflate;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/util/internal/jzlib/Inflate;->inflateSync(Lorg/jboss/netty/util/internal/jzlib/ZStream;)I

    move-result v0

    goto :goto_0
.end method

.method read_buf([BII)I
    .locals 6

    iget v0, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    if-le v0, p3, :cond_0

    move v0, p3

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/ZStream$1;->$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->dstate:Lorg/jboss/netty/util/internal/jzlib/Deflate;

    iget-object v2, v2, Lorg/jboss/netty/util/internal/jzlib/Deflate;->wrapperType:Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/jzlib/JZlib$WrapperType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->total_in:J

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v4, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v2, v3, v1, v4, v0}, Lorg/jboss/netty/util/internal/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->adler:J

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget v3, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    invoke-static {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/jzlib/CRC32;->crc32(I[BII)I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->crc32:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
