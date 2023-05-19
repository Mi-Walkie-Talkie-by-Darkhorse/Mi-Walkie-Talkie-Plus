.class final enum Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
.super Ljava/lang/Enum;
.source "HmsScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CIPHER_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

.field public static final enum WPA_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;


# instance fields
.field private final cipherMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v1, "SAE_MODE_TYPE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v4, "WEP_MODE_TYPE"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v4, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v7, "NO_PASSWORD_MODE_TYPE"

    invoke-direct {v4, v7, v6, v2}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    new-instance v7, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const-string v8, "WPA_MODE_TYPE"

    invoke-direct {v7, v8, v3, v5}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WPA_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    aput-object v7, v8, v3

    .line 2
    sput-object v8, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

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
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->cipherMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    return-object v0
.end method


# virtual methods
.method getCipherMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->cipherMode:I

    return v0
.end method
