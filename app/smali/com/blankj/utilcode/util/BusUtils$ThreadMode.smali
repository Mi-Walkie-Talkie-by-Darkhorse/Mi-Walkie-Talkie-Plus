.class public final enum Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
.super Ljava/lang/Enum;
.source "BusUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blankj/utilcode/util/BusUtils$ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum b:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum c:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum d:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum e:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field public static final enum f:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

.field private static final synthetic g:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->a:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v3, "IO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->b:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v3, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v5, "CPU"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->c:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v5, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v7, "CACHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->d:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v7, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v9, "SINGLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->e:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    new-instance v9, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const-string v11, "POSTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->f:Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->g:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .locals 1

    .line 1
    const-class v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object p0
.end method

.method public static values()[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->g:[Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/BusUtils$ThreadMode;

    return-object v0
.end method
