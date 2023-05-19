.class public final enum Lcom/huawei/hms/scankit/p/be;
.super Ljava/lang/Enum;
.source "Compaction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/be;

.field public static final enum b:Lcom/huawei/hms/scankit/p/be;

.field public static final enum c:Lcom/huawei/hms/scankit/p/be;

.field public static final enum d:Lcom/huawei/hms/scankit/p/be;

.field private static final synthetic e:[Lcom/huawei/hms/scankit/p/be;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/be;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/be;->a:Lcom/huawei/hms/scankit/p/be;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/be;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/be;->b:Lcom/huawei/hms/scankit/p/be;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/be;

    const-string v5, "BYTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/be;->c:Lcom/huawei/hms/scankit/p/be;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/be;

    const-string v7, "NUMERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/p/be;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/p/be;->d:Lcom/huawei/hms/scankit/p/be;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/huawei/hms/scankit/p/be;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/huawei/hms/scankit/p/be;->e:[Lcom/huawei/hms/scankit/p/be;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/be;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/be;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/be;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/be;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/be;->e:[Lcom/huawei/hms/scankit/p/be;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/be;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/be;

    return-object v0
.end method
