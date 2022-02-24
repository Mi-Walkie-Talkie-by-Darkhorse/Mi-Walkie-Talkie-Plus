.class public final enum Lcom/xiaomi/push/ib;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/ib;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/ib;

.field private static final synthetic a:[Lcom/xiaomi/push/ib;

.field public static final enum b:Lcom/xiaomi/push/ib;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaomi/push/ib;

    const/4 v1, 0x1

    const-string v2, "MISC_CONFIG"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/push/ib;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ib;->a:Lcom/xiaomi/push/ib;

    new-instance v0, Lcom/xiaomi/push/ib;

    const-string v2, "PLUGIN_CONFIG"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/push/ib;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/ib;->b:Lcom/xiaomi/push/ib;

    invoke-static {}, Lcom/xiaomi/push/ib;->a()[Lcom/xiaomi/push/ib;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/ib;->a:[Lcom/xiaomi/push/ib;

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

    iput p3, p0, Lcom/xiaomi/push/ib;->a:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/ib;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/push/ib;->b:Lcom/xiaomi/push/ib;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/push/ib;->a:Lcom/xiaomi/push/ib;

    return-object p0
.end method

.method private static synthetic a()[Lcom/xiaomi/push/ib;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/push/ib;

    sget-object v1, Lcom/xiaomi/push/ib;->a:Lcom/xiaomi/push/ib;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/ib;->b:Lcom/xiaomi/push/ib;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/ib;
    .locals 1

    const-class v0, Lcom/xiaomi/push/ib;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/ib;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/ib;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/ib;->a:[Lcom/xiaomi/push/ib;

    invoke-virtual {v0}, [Lcom/xiaomi/push/ib;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/ib;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/ib;->a:I

    return v0
.end method
