.class public final enum Lcom/xiaomi/smack/packet/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/smack/packet/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/smack/packet/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/smack/packet/f$a;

.field public static final enum b:Lcom/xiaomi/smack/packet/f$a;

.field public static final enum c:Lcom/xiaomi/smack/packet/f$a;

.field public static final enum d:Lcom/xiaomi/smack/packet/f$a;

.field public static final enum e:Lcom/xiaomi/smack/packet/f$a;

.field private static final synthetic f:[Lcom/xiaomi/smack/packet/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/smack/packet/f$a;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/smack/packet/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->a:Lcom/xiaomi/smack/packet/f$a;

    new-instance v0, Lcom/xiaomi/smack/packet/f$a;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/smack/packet/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->b:Lcom/xiaomi/smack/packet/f$a;

    new-instance v0, Lcom/xiaomi/smack/packet/f$a;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/smack/packet/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->c:Lcom/xiaomi/smack/packet/f$a;

    new-instance v0, Lcom/xiaomi/smack/packet/f$a;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/smack/packet/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->d:Lcom/xiaomi/smack/packet/f$a;

    new-instance v0, Lcom/xiaomi/smack/packet/f$a;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/smack/packet/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->e:Lcom/xiaomi/smack/packet/f$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/smack/packet/f$a;

    sget-object v1, Lcom/xiaomi/smack/packet/f$a;->a:Lcom/xiaomi/smack/packet/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/smack/packet/f$a;->b:Lcom/xiaomi/smack/packet/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/smack/packet/f$a;->c:Lcom/xiaomi/smack/packet/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/smack/packet/f$a;->d:Lcom/xiaomi/smack/packet/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/smack/packet/f$a;->e:Lcom/xiaomi/smack/packet/f$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/smack/packet/f$a;->f:[Lcom/xiaomi/smack/packet/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/smack/packet/f$a;
    .locals 1

    const-class v0, Lcom/xiaomi/smack/packet/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/f$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/smack/packet/f$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/packet/f$a;->f:[Lcom/xiaomi/smack/packet/f$a;

    invoke-virtual {v0}, [Lcom/xiaomi/smack/packet/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/smack/packet/f$a;

    return-object v0
.end method
