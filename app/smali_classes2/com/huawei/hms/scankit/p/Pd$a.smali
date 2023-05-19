.class final enum Lcom/huawei/hms/scankit/p/Pd$a;
.super Ljava/lang/Enum;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Pd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/Pd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/Pd$a;

.field public static final enum b:Lcom/huawei/hms/scankit/p/Pd$a;

.field public static final enum c:Lcom/huawei/hms/scankit/p/Pd$a;

.field public static final enum d:Lcom/huawei/hms/scankit/p/Pd$a;

.field private static final synthetic e:[Lcom/huawei/hms/scankit/p/Pd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Pd$a;

    const-string v1, "UNCODABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Pd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/Pd$a;->a:Lcom/huawei/hms/scankit/p/Pd$a;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Pd$a;

    const-string v3, "ONE_DIGIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/Pd$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/Pd$a;->b:Lcom/huawei/hms/scankit/p/Pd$a;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/Pd$a;

    const-string v5, "TWO_DIGITS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/Pd$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/Pd$a;->c:Lcom/huawei/hms/scankit/p/Pd$a;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/Pd$a;

    const-string v7, "FNC_1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/p/Pd$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/p/Pd$a;->d:Lcom/huawei/hms/scankit/p/Pd$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/huawei/hms/scankit/p/Pd$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/huawei/hms/scankit/p/Pd$a;->e:[Lcom/huawei/hms/scankit/p/Pd$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Pd$a;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/Pd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/Pd$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/Pd$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Pd$a;->e:[Lcom/huawei/hms/scankit/p/Pd$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/Pd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/Pd$a;

    return-object v0
.end method
