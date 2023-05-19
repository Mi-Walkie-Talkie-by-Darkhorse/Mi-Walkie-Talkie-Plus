.class public final enum Lcom/huawei/hms/scankit/p/Ld;
.super Ljava/lang/Enum;
.source "SymbolShapeHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/Ld;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/Ld;

.field public static final enum b:Lcom/huawei/hms/scankit/p/Ld;

.field public static final enum c:Lcom/huawei/hms/scankit/p/Ld;

.field private static final synthetic d:[Lcom/huawei/hms/scankit/p/Ld;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Ld;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Ld;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/Ld;->a:Lcom/huawei/hms/scankit/p/Ld;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Ld;

    const-string v3, "FORCE_SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/Ld;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/Ld;->b:Lcom/huawei/hms/scankit/p/Ld;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/Ld;

    const-string v5, "FORCE_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/Ld;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/Ld;->c:Lcom/huawei/hms/scankit/p/Ld;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/huawei/hms/scankit/p/Ld;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/huawei/hms/scankit/p/Ld;->d:[Lcom/huawei/hms/scankit/p/Ld;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ld;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/Ld;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/Ld;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/Ld;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Ld;->d:[Lcom/huawei/hms/scankit/p/Ld;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/Ld;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/Ld;

    return-object v0
.end method
