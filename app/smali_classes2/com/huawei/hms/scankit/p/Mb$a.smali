.class final enum Lcom/huawei/hms/scankit/p/Mb$a;
.super Ljava/lang/Enum;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/Mb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/Mb$a;

.field public static final enum b:Lcom/huawei/hms/scankit/p/Mb$a;

.field public static final enum c:Lcom/huawei/hms/scankit/p/Mb$a;

.field public static final enum d:Lcom/huawei/hms/scankit/p/Mb$a;

.field public static final enum e:Lcom/huawei/hms/scankit/p/Mb$a;

.field public static final enum f:Lcom/huawei/hms/scankit/p/Mb$a;

.field private static final synthetic g:[Lcom/huawei/hms/scankit/p/Mb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v3, "LOWER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/Mb$a;->b:Lcom/huawei/hms/scankit/p/Mb$a;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v5, "MIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/Mb$a;->c:Lcom/huawei/hms/scankit/p/Mb$a;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v7, "PUNCT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/p/Mb$a;->d:Lcom/huawei/hms/scankit/p/Mb$a;

    .line 5
    new-instance v7, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v9, "ALPHA_SHIFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/huawei/hms/scankit/p/Mb$a;->e:Lcom/huawei/hms/scankit/p/Mb$a;

    .line 6
    new-instance v9, Lcom/huawei/hms/scankit/p/Mb$a;

    const-string v11, "PUNCT_SHIFT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/huawei/hms/scankit/p/Mb$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/huawei/hms/scankit/p/Mb$a;->f:Lcom/huawei/hms/scankit/p/Mb$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/huawei/hms/scankit/p/Mb$a;->g:[Lcom/huawei/hms/scankit/p/Mb$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/Mb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/Mb$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Mb$a;->g:[Lcom/huawei/hms/scankit/p/Mb$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/Mb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/Mb$a;

    return-object v0
.end method
