.class public final enum Lcom/xiaomi/push/service/module/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/push/service/module/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/service/module/e;

.field private static final synthetic c:[Lcom/xiaomi/push/service/module/e;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/push/service/module/e;

    const-string v1, "MODULE_CDATA"

    const-string v2, "mpcd"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/push/service/module/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/module/e;->a:Lcom/xiaomi/push/service/module/e;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaomi/push/service/module/e;

    sget-object v1, Lcom/xiaomi/push/service/module/e;->a:Lcom/xiaomi/push/service/module/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/push/service/module/e;->c:[Lcom/xiaomi/push/service/module/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/push/service/module/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/service/module/e;
    .locals 1

    const-class v0, Lcom/xiaomi/push/service/module/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/module/e;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/push/service/module/e;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/module/e;->c:[Lcom/xiaomi/push/service/module/e;

    invoke-virtual {v0}, [Lcom/xiaomi/push/service/module/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/module/e;

    return-object v0
.end method
