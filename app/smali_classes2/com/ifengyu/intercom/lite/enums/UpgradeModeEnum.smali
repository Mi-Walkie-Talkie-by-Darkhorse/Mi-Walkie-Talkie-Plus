.class public final enum Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;
.super Ljava/lang/Enum;
.source "UpgradeModeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

.field public static final enum d:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

.field private static final synthetic e:[Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ADVICE"

    const-string v5, "\u5efa\u8bae\u5347\u7ea7"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->c:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FORCE"

    const-string v6, "\u5f3a\u5236\u5347\u7ea7"

    invoke-direct {v0, v5, v1, v4, v6}, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->d:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    new-array v2, v2, [Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    .line 3
    sget-object v4, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->c:Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    sput-object v2, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->e:[Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

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
    iput-object p3, p0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->a:Ljava/lang/Integer;

    .line 3
    iput-object p4, p0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->e:[Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/enums/UpgradeModeEnum;->a:Ljava/lang/Integer;

    return-object v0
.end method
