.class final enum Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
.super Ljava/lang/Enum;
.source "HmsScanBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScanBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SCAN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum ALL_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODABAR_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

.field public static final enum UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;


# instance fields
.field private final scanType:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->FORMAT_UNKNOWN:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v3, "ALL_SCAN_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ALL_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v3, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v5, "QRCODE_SCAN_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->QRCODE_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v5, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v7, "AZTEC_SCAN_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->AZTEC_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    .line 2
    new-instance v7, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v9, "DATAMATRIX_SCAN_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->DATAMATRIX_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v9, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v11, "PDF417_SCAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v8}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->PDF417_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v11, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v13, "CODE39_SCAN_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v10}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE39_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    .line 3
    new-instance v13, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v15, "CODE93_SCAN_TYPE"

    const/4 v10, 0x7

    invoke-direct {v13, v15, v10, v12}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE93_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v15, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v12, "CODE128_SCAN_TYPE"

    const/16 v8, 0x8

    invoke-direct {v15, v12, v8, v14}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODE128_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v12, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v14, "EAN13_SCAN_TYPE"

    const/16 v6, 0x9

    invoke-direct {v12, v14, v6, v10}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN13_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    .line 4
    new-instance v14, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v10, "EAN8_SCAN_TYPE"

    const/16 v4, 0xa

    invoke-direct {v14, v10, v4, v8}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->EAN8_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v10, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v8, "ITF14_SCAN_TYPE"

    const/16 v2, 0xb

    invoke-direct {v10, v8, v2, v6}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->ITF14_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v8, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v6, "UPCCODE_A_SCAN_TYPE"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_A_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    .line 5
    new-instance v6, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v4, "UPCCODE_E_SCAN_TYPE"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0xb

    invoke-direct {v6, v4, v2, v8}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->UPCCODE_E_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    new-instance v4, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const-string v8, "CODABAR_SCAN_TYPE"

    const/16 v2, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0xc

    invoke-direct {v4, v8, v2, v6}, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->CODABAR_SCAN_TYPE:Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const/16 v6, 0xf

    new-array v6, v6, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v14, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    aput-object v4, v6, v2

    .line 6
    sput-object v6, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;

    return-object v0
.end method


# virtual methods
.method getScanType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method getUnKnown()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScanBase$SCAN_TYPE;->scanType:I

    return v0
.end method
