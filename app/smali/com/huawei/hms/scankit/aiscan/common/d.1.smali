.class public final enum Lcom/huawei/hms/scankit/aiscan/common/d;
.super Ljava/lang/Enum;
.source "DecodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/aiscan/common/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum b:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum c:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum d:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum e:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum f:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum g:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum h:Lcom/huawei/hms/scankit/aiscan/common/d;

.field public static final enum i:Lcom/huawei/hms/scankit/aiscan/common/d;

.field private static final synthetic j:[Lcom/huawei/hms/scankit/aiscan/common/d;


# instance fields
.field private final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v1, Ljava/lang/Object;

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->a:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v2, Ljava/util/List;

    const-string v4, "POSSIBLE_FORMATS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v6, "PHOTO_MODE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->c:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 4
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v8, "PHOTO_MODE_NUM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 5
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v10, "NEED_JNI"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lcom/huawei/hms/scankit/aiscan/common/d;->e:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 6
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v10, Ljava/lang/String;

    const-string v12, "CHARACTER_SET"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lcom/huawei/hms/scankit/aiscan/common/d;->f:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 7
    new-instance v10, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v12, Ljava/lang/Void;

    const-string v14, "RETURN_CODABAR_START_END"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lcom/huawei/hms/scankit/aiscan/common/d;->g:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 8
    new-instance v12, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v14, Lcom/huawei/hms/scankit/aiscan/common/A;

    const-string v15, "NEED_RESULT_POINT_CALLBACK"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 9
    new-instance v14, Lcom/huawei/hms/scankit/aiscan/common/d;

    const-class v15, [I

    const-string v13, "ALLOWED_EAN_EXTENSIONS"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/huawei/hms/scankit/aiscan/common/d;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lcom/huawei/hms/scankit/aiscan/common/d;->i:Lcom/huawei/hms/scankit/aiscan/common/d;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/huawei/hms/scankit/aiscan/common/d;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 10
    sput-object v13, Lcom/huawei/hms/scankit/aiscan/common/d;->j:[Lcom/huawei/hms/scankit/aiscan/common/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/huawei/hms/scankit/aiscan/common/d;->k:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/d;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/aiscan/common/d;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/aiscan/common/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->j:[Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/d;

    return-object v0
.end method
