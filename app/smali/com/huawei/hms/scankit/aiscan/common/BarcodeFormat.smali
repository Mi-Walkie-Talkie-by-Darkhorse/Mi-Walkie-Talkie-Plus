.class public final enum Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum n:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field public static final enum o:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

.field private static final synthetic p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v3, "CODABAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 5
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v9, "CODE_128"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 6
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 7
    new-instance v11, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v13, "EAN_8"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 8
    new-instance v13, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v15, "EAN_13"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 9
    new-instance v15, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v14, "ITF"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 10
    new-instance v14, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v12, "PDF_417"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 11
    new-instance v12, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v10, "QR_CODE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 12
    new-instance v10, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v8, "UPC_A"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 13
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v6, "UPC_E"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 14
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v4, "UPC_EAN_EXTENSION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->n:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 15
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const-string v2, "NONE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->o:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 16
    sput-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 17
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/b;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/b;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->p:[Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
