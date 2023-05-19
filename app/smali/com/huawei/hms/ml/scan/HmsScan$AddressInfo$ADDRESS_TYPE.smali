.class final enum Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;
.super Ljava/lang/Enum;
.source "HmsScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ADDRESS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

.field public static final enum OFFICE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

.field public static final enum OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

.field public static final enum RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;


# instance fields
.field private final addressType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    const-string v1, "OTHER_USE_TYPE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    const-string v3, "OFFICE_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->OFFICE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    new-instance v3, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    const-string v5, "RESIDENTIAL_USE_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

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
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->addressType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;

    return-object v0
.end method


# virtual methods
.method getAddressType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo$ADDRESS_TYPE;->addressType:I

    return v0
.end method
