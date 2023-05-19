.class final enum Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
.super Ljava/lang/Enum;
.source "HmsScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SCAN_TYPE_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum ARTICLE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum BOOK_MARK_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum CONTACT_DETAIL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum DRIVER_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum EMAIL_CONTENT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum EVENT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum ISBN_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum LOCATION_COORDINATE_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum PURE_TEXT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum SMS_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum TEL_PHONE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum URL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum VEHICLEINFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

.field public static final enum WIFI_CONNECT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;


# instance fields
.field private final scanTypeFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v1, "ARTICLE_NUMBER_FORM"

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ARTICLE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v1, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v3, "EMAIL_CONTENT_FORM"

    const/4 v4, 0x1

    const/16 v5, 0x3ea

    invoke-direct {v1, v3, v4, v5}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EMAIL_CONTENT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v3, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v5, "TEL_PHONE_NUMBER_FORM"

    const/4 v6, 0x2

    const/16 v7, 0x3eb

    invoke-direct {v3, v5, v6, v7}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->TEL_PHONE_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v5, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v7, "PURE_TEXT_FORM"

    const/4 v8, 0x3

    const/16 v9, 0x3ec

    invoke-direct {v5, v7, v8, v9}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->PURE_TEXT_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    .line 2
    new-instance v7, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v9, "SMS_FORM"

    const/4 v10, 0x4

    const/16 v11, 0x3ed

    invoke-direct {v7, v9, v10, v11}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->SMS_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v9, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v11, "URL_FORM"

    const/4 v12, 0x5

    const/16 v13, 0x3ee

    invoke-direct {v9, v11, v12, v13}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->URL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v11, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v13, "WIFI_CONNECT_INFO_FORM"

    const/4 v14, 0x6

    const/16 v15, 0x3ef

    invoke-direct {v11, v13, v14, v15}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->WIFI_CONNECT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    .line 3
    new-instance v13, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "EVENT_INFO_FORM"

    const/4 v14, 0x7

    const/16 v12, 0x3f0

    invoke-direct {v13, v15, v14, v12}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->EVENT_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v12, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "CONTACT_DETAIL_FORM"

    const/16 v14, 0x8

    const/16 v10, 0x3f1

    invoke-direct {v12, v15, v14, v10}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->CONTACT_DETAIL_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v10, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "DRIVER_INFO_FORM"

    const/16 v14, 0x9

    const/16 v8, 0x3f2

    invoke-direct {v10, v15, v14, v8}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->DRIVER_INFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    .line 4
    new-instance v8, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "LOCATION_COORDINATE_FORM"

    const/16 v14, 0xa

    const/16 v6, 0x3f3

    invoke-direct {v8, v15, v14, v6}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->LOCATION_COORDINATE_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v6, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "ISBN_NUMBER_FORM"

    const/16 v14, 0xb

    const/16 v4, 0x3f4

    invoke-direct {v6, v15, v14, v4}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->ISBN_NUMBER_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v4, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "BOOK_MARK_FORM"

    const/16 v14, 0xc

    const/16 v2, 0x3f5

    invoke-direct {v4, v15, v14, v2}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->BOOK_MARK_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    new-instance v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const-string v15, "VEHICLEINFO_FORM"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x3f6

    invoke-direct {v2, v15, v14, v4}, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->VEHICLEINFO_FORM:Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    .line 5
    sput-object v4, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

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
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->scanTypeFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->$VALUES:[Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    invoke-virtual {v0}, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;

    return-object v0
.end method


# virtual methods
.method getScanType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$SCAN_TYPE_FORMAT;->scanTypeFormat:I

    return v0
.end method
