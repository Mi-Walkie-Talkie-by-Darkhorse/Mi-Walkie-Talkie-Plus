.class public final enum Lcom/xiaomi/push/hc$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hc$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/hc$a;

.field private static final synthetic a:[Lcom/xiaomi/push/hc$a;

.field public static final enum b:Lcom/xiaomi/push/hc$a;

.field public static final enum c:Lcom/xiaomi/push/hc$a;

.field public static final enum d:Lcom/xiaomi/push/hc$a;

.field public static final enum e:Lcom/xiaomi/push/hc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/hc$a;

    const-string v1, "chat"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$a;->a:Lcom/xiaomi/push/hc$a;

    new-instance v0, Lcom/xiaomi/push/hc$a;

    const-string v1, "available"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$a;->b:Lcom/xiaomi/push/hc$a;

    new-instance v0, Lcom/xiaomi/push/hc$a;

    const-string v1, "away"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$a;->c:Lcom/xiaomi/push/hc$a;

    new-instance v0, Lcom/xiaomi/push/hc$a;

    const-string v1, "xa"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$a;->d:Lcom/xiaomi/push/hc$a;

    new-instance v0, Lcom/xiaomi/push/hc$a;

    const-string v1, "dnd"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$a;->e:Lcom/xiaomi/push/hc$a;

    invoke-static {}, Lcom/xiaomi/push/hc$a;->a()[Lcom/xiaomi/push/hc$a;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hc$a;->a:[Lcom/xiaomi/push/hc$a;

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

.method private static synthetic a()[Lcom/xiaomi/push/hc$a;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/push/hc$a;

    sget-object v1, Lcom/xiaomi/push/hc$a;->a:Lcom/xiaomi/push/hc$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$a;->b:Lcom/xiaomi/push/hc$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$a;->c:Lcom/xiaomi/push/hc$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$a;->d:Lcom/xiaomi/push/hc$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$a;->e:Lcom/xiaomi/push/hc$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$a;
    .locals 1

    const-class v0, Lcom/xiaomi/push/hc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hc$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hc$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hc$a;->a:[Lcom/xiaomi/push/hc$a;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hc$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hc$a;

    return-object v0
.end method
