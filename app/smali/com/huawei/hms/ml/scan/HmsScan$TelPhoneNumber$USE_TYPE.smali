.class final enum Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
.super Ljava/lang/Enum;
.source "HmsScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "USE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

.field public static final enum RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;


# instance fields
.field private final useType:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v1, "OTHER_USE_TYPE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v3, "RESIDENTIAL_USE_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v3, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v5, "FAX_USE_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->FAX_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v5, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v7, "CELLPHONE_NUMBER_USE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->CELLPHONE_NUMBER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    new-instance v7, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const-string v9, "OFFICE_USE_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

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
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->useType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;

    return-object v0
.end method


# virtual methods
.method getUseType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber$USE_TYPE;->useType:I

    return v0
.end method
