.class Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/tls/DTLSReassembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->start:I

    iput p2, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->start:I

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->end:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/DTLSReassembler$Range;->start:I

    return-void
.end method
