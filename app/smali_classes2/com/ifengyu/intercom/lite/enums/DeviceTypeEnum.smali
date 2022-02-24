.class public final enum Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;
.super Ljava/lang/Enum;
.source "DeviceTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

.field public static final enum c:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

.field public static final enum d:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

.field public static final enum e:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

.field private static final synthetic f:[Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DOLPHIN"

    const-string v4, "dolphin"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->b:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    const/4 v3, 0x4

    const-string v4, "SHARK"

    const-string v5, "shark"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    const/4 v4, 0x2

    const-string v5, "SEAL"

    const/4 v6, 0x5

    const-string v7, "seal"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->d:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    const/4 v5, 0x3

    const-string v6, "LITE"

    const v7, 0x8f03

    const-string v8, "lite"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->e:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    new-array v3, v3, [Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    .line 5
    sget-object v6, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->b:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    aput-object v6, v3, v1

    sget-object v1, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    aput-object v1, v3, v2

    sget-object v1, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->d:Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    sput-object v3, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->f:[Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p4, p0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->f:[Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/enums/DeviceTypeEnum;->a:Ljava/lang/String;

    return-object v0
.end method
