.class public final enum Lcom/xiaomi/push/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/g$a;

.field private static final synthetic a:[Lcom/xiaomi/push/g$a;

.field public static final enum b:Lcom/xiaomi/push/g$a;

.field public static final enum c:Lcom/xiaomi/push/g$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/g$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/push/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/g$a;->a:Lcom/xiaomi/push/g$a;

    new-instance v0, Lcom/xiaomi/push/g$a;

    const-string v1, "ALLOWED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/push/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/g$a;->b:Lcom/xiaomi/push/g$a;

    new-instance v0, Lcom/xiaomi/push/g$a;

    const-string v1, "NOT_ALLOWED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/push/g$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/g$a;->c:Lcom/xiaomi/push/g$a;

    invoke-static {}, Lcom/xiaomi/push/g$a;->a()[Lcom/xiaomi/push/g$a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/g$a;->a:[Lcom/xiaomi/push/g$a;

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

    iput p3, p0, Lcom/xiaomi/push/g$a;->a:I

    return-void
.end method

.method private static synthetic a()[Lcom/xiaomi/push/g$a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/push/g$a;

    sget-object v1, Lcom/xiaomi/push/g$a;->a:Lcom/xiaomi/push/g$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/g$a;->b:Lcom/xiaomi/push/g$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/g$a;->c:Lcom/xiaomi/push/g$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/g$a;
    .locals 1

    const-class v0, Lcom/xiaomi/push/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/g$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/g$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/g$a;->a:[Lcom/xiaomi/push/g$a;

    invoke-virtual {v0}, [Lcom/xiaomi/push/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/g$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/g$a;->a:I

    return v0
.end method
