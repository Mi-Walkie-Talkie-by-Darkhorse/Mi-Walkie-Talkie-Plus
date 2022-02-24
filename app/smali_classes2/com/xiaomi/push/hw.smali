.class public final enum Lcom/xiaomi/push/hw;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/hw;

.field private static final synthetic a:[Lcom/xiaomi/push/hw;

.field public static final enum b:Lcom/xiaomi/push/hw;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/hw;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/push/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hw;->a:Lcom/xiaomi/push/hw;

    new-instance v0, Lcom/xiaomi/push/hw;

    const/4 v1, 0x1

    const-string v2, "BIND"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/push/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/hw;->b:Lcom/xiaomi/push/hw;

    invoke-static {}, Lcom/xiaomi/push/hw;->a()[Lcom/xiaomi/push/hw;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hw;->a:[Lcom/xiaomi/push/hw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/push/hw;->a:I

    return-void
.end method

.method private static synthetic a()[Lcom/xiaomi/push/hw;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/push/hw;

    sget-object v1, Lcom/xiaomi/push/hw;->a:Lcom/xiaomi/push/hw;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hw;->b:Lcom/xiaomi/push/hw;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hw;
    .locals 1

    const-class v0, Lcom/xiaomi/push/hw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hw;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hw;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hw;->a:[Lcom/xiaomi/push/hw;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hw;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/hw;->a:I

    return v0
.end method
