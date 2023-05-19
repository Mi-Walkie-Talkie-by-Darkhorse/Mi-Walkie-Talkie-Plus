.class public final enum Lcom/xiaomi/mipush/sdk/au;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mipush/sdk/au;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mipush/sdk/au;

.field private static final synthetic a:[Lcom/xiaomi/mipush/sdk/au;

.field public static final enum b:Lcom/xiaomi/mipush/sdk/au;

.field public static final enum c:Lcom/xiaomi/mipush/sdk/au;

.field public static final enum d:Lcom/xiaomi/mipush/sdk/au;

.field public static final enum e:Lcom/xiaomi/mipush/sdk/au;

.field public static final enum f:Lcom/xiaomi/mipush/sdk/au;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "DISABLE_PUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "ENABLE_PUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "UPLOAD_HUAWEI_TOKEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "UPLOAD_FCM_TOKEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "UPLOAD_COS_TOKEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    new-instance v0, Lcom/xiaomi/mipush/sdk/au;

    const-string v1, "UPLOAD_FTOS_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/au;->a()[Lcom/xiaomi/mipush/sdk/au;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/au;->a:[Lcom/xiaomi/mipush/sdk/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/xiaomi/mipush/sdk/au;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/mipush/sdk/au;

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->a:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->b:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->c:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->d:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->e:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/au;->f:Lcom/xiaomi/mipush/sdk/au;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/au;
    .locals 1

    const-class v0, Lcom/xiaomi/mipush/sdk/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/au;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/au;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/au;->a:[Lcom/xiaomi/mipush/sdk/au;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/au;

    return-object v0
.end method
