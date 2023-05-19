.class public final enum Lcom/lzy/okgo/cache/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lzy/okgo/cache/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum b:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum c:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum d:Lcom/lzy/okgo/cache/CacheMode;

.field public static final enum e:Lcom/lzy/okgo/cache/CacheMode;

.field private static final synthetic f:[Lcom/lzy/okgo/cache/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/lzy/okgo/cache/CacheMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okgo/cache/CacheMode;->a:Lcom/lzy/okgo/cache/CacheMode;

    .line 2
    new-instance v1, Lcom/lzy/okgo/cache/CacheMode;

    const-string v3, "NO_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lzy/okgo/cache/CacheMode;->b:Lcom/lzy/okgo/cache/CacheMode;

    .line 3
    new-instance v3, Lcom/lzy/okgo/cache/CacheMode;

    const-string v5, "REQUEST_FAILED_READ_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lzy/okgo/cache/CacheMode;->c:Lcom/lzy/okgo/cache/CacheMode;

    .line 4
    new-instance v5, Lcom/lzy/okgo/cache/CacheMode;

    const-string v7, "IF_NONE_CACHE_REQUEST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lzy/okgo/cache/CacheMode;->d:Lcom/lzy/okgo/cache/CacheMode;

    .line 5
    new-instance v7, Lcom/lzy/okgo/cache/CacheMode;

    const-string v9, "FIRST_CACHE_THEN_REQUEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/lzy/okgo/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/lzy/okgo/cache/CacheMode;->e:Lcom/lzy/okgo/cache/CacheMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/lzy/okgo/cache/CacheMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/lzy/okgo/cache/CacheMode;->f:[Lcom/lzy/okgo/cache/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    const-class v0, Lcom/lzy/okgo/cache/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public static values()[Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->f:[Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0}, [Lcom/lzy/okgo/cache/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method
