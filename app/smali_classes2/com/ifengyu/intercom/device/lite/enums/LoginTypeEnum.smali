.class public final enum Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;
.super Ljava/lang/Enum;
.source "LoginTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

.field public static final enum c:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

.field public static final enum d:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

.field private static final synthetic e:[Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PHONE"

    const/4 v3, 0x0

    const-string v4, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->b:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "WECHAT"

    const/4 v5, 0x1

    const-string v6, "\u5fae\u4fe1\u767b\u5f55"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->c:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    .line 3
    new-instance v2, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    const/16 v4, 0xca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "XIAOMI"

    const/4 v7, 0x2

    const-string v8, "\u5c0f\u7c73\u767b\u5f55"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->d:Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 4
    sput-object v4, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->e:[Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->e:[Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/enums/LoginTypeEnum;->a:Ljava/lang/Integer;

    return-object v0
.end method
