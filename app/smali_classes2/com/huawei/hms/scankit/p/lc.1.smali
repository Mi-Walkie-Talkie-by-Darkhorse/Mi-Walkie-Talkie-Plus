.class abstract enum Lcom/huawei/hms/scankit/p/lc;
.super Ljava/lang/Enum;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/lc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum b:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum c:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum d:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum e:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum f:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum g:Lcom/huawei/hms/scankit/p/lc;

.field public static final enum h:Lcom/huawei/hms/scankit/p/lc;

.field private static final synthetic i:[Lcom/huawei/hms/scankit/p/lc;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/dc;

    const-string v1, "DATA_MASK_000"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/dc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/lc;->a:Lcom/huawei/hms/scankit/p/lc;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/ec;

    const-string v3, "DATA_MASK_001"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/ec;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/lc;->b:Lcom/huawei/hms/scankit/p/lc;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/fc;

    const-string v5, "DATA_MASK_010"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/fc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/lc;->c:Lcom/huawei/hms/scankit/p/lc;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/gc;

    const-string v7, "DATA_MASK_011"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/p/gc;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/p/lc;->d:Lcom/huawei/hms/scankit/p/lc;

    .line 5
    new-instance v7, Lcom/huawei/hms/scankit/p/hc;

    const-string v9, "DATA_MASK_100"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/hc;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/huawei/hms/scankit/p/lc;->e:Lcom/huawei/hms/scankit/p/lc;

    .line 6
    new-instance v9, Lcom/huawei/hms/scankit/p/ic;

    const-string v11, "DATA_MASK_101"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/huawei/hms/scankit/p/ic;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/huawei/hms/scankit/p/lc;->f:Lcom/huawei/hms/scankit/p/lc;

    .line 7
    new-instance v11, Lcom/huawei/hms/scankit/p/jc;

    const-string v13, "DATA_MASK_110"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/huawei/hms/scankit/p/jc;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/huawei/hms/scankit/p/lc;->g:Lcom/huawei/hms/scankit/p/lc;

    .line 8
    new-instance v13, Lcom/huawei/hms/scankit/p/kc;

    const-string v15, "DATA_MASK_111"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/huawei/hms/scankit/p/kc;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/huawei/hms/scankit/p/lc;->h:Lcom/huawei/hms/scankit/p/lc;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/huawei/hms/scankit/p/lc;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/huawei/hms/scankit/p/lc;->i:[Lcom/huawei/hms/scankit/p/lc;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/huawei/hms/scankit/p/dc;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/lc;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/lc;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/lc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/lc;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/lc;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/lc;->i:[Lcom/huawei/hms/scankit/p/lc;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/lc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/lc;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/huawei/hms/scankit/p/bb;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 1
    invoke-virtual {p0, v1, v2}, Lcom/huawei/hms/scankit/p/lc;->a(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p1, v2, v1}, Lcom/huawei/hms/scankit/p/bb;->a(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method abstract a(II)Z
.end method
