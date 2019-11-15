.class public final Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
.super Ljava/lang/Object;
.source "BarcodeMatrix.java"


# instance fields
.field private currentRow:I

.field private final height:I

.field private final matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

.field private final width:I


# direct methods
.method constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    iput-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    new-instance v3, Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v4, v4, 0x11

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;-><init>(I)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p2, 0x11

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    iput p1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    return-void
.end method


# virtual methods
.method getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMatrix()[[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    return-object v0
.end method

.method public getScaledMatrix(II)[[B
    .locals 6

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    mul-int/2addr v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    mul-int v2, v1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    div-int v5, v1, p2

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->getScaledRow(I)[B

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method set(IIB)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1, p3}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IB)V

    return-void
.end method

.method startRow()V
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    return-void
.end method
