.class final Lcom/google/zxing/qrcode/encoder/BlockPair;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final dataBytes:[B

.field private final errorCorrectionBytes:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    return-void
.end method


# virtual methods
.method public getDataBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    return-object v0
.end method

.method public getErrorCorrectionBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    return-object v0
.end method
