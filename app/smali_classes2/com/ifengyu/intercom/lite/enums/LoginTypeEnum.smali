.class public final enum Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

.field public static final enum d:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

.field public static final enum e:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

.field private static final synthetic f:[Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "PHONE"

    const-string v4, "\u624b\u673a\u53f7\u767b\u5f55"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    new-instance v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "WECHAT"

    const-string v5, "\u5fae\u4fe1\u767b\u5f55"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->d:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    new-instance v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "XIAOMI"

    const-string v6, "\u5c0f\u7c73\u767b\u5f55"

    invoke-direct {v0, v5, v4, v1, v6}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->e:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    sget-object v5, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->c:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    aput-object v5, v1, v2

    sget-object v2, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->d:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->f:[Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->a:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->f:[Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->a:Ljava/lang/Integer;

    return-object v0
.end method
