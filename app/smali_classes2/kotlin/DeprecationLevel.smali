.class public final enum Lkotlin/DeprecationLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/DeprecationLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/DeprecationLevel;",
        "",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
        "HIDDEN",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final enum a:Lkotlin/DeprecationLevel;

.field public static final enum b:Lkotlin/DeprecationLevel;

.field private static final synthetic c:[Lkotlin/DeprecationLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/DeprecationLevel;

    new-instance v1, Lkotlin/DeprecationLevel;

    const/4 v2, 0x0

    const-string v3, "WARNING"

    invoke-direct {v1, v3, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/DeprecationLevel;->a:Lkotlin/DeprecationLevel;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/DeprecationLevel;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v1, v3, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/DeprecationLevel;->b:Lkotlin/DeprecationLevel;

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/DeprecationLevel;

    const/4 v2, 0x2

    const-string v3, "HIDDEN"

    invoke-direct {v1, v3, v2}, Lkotlin/DeprecationLevel;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/DeprecationLevel;->c:[Lkotlin/DeprecationLevel;

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

.method public static valueOf(Ljava/lang/String;)Lkotlin/DeprecationLevel;
    .locals 1

    const-class v0, Lkotlin/DeprecationLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/DeprecationLevel;

    return-object p0
.end method

.method public static values()[Lkotlin/DeprecationLevel;
    .locals 1

    sget-object v0, Lkotlin/DeprecationLevel;->c:[Lkotlin/DeprecationLevel;

    invoke-virtual {v0}, [Lkotlin/DeprecationLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/DeprecationLevel;

    return-object v0
.end method
