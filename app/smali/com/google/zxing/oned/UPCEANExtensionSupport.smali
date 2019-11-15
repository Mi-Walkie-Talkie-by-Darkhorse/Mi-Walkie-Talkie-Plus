.class final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "UPCEANExtensionSupport.java"


# static fields
.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

.field private final twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension2Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension2Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension5Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension5Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    return-void
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method
