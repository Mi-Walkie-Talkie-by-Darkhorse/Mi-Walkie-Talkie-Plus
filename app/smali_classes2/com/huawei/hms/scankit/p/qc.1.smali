.class public final enum Lcom/huawei/hms/scankit/p/qc;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/qc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum b:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum c:Lcom/huawei/hms/scankit/p/qc;

.field public static final enum d:Lcom/huawei/hms/scankit/p/qc;

.field private static final e:[Lcom/huawei/hms/scankit/p/qc;

.field private static final synthetic f:[Lcom/huawei/hms/scankit/p/qc;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/qc;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/qc;->a:Lcom/huawei/hms/scankit/p/qc;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/qc;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/scankit/p/qc;->b:Lcom/huawei/hms/scankit/p/qc;

    .line 3
    new-instance v4, Lcom/huawei/hms/scankit/p/qc;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/scankit/p/qc;->c:Lcom/huawei/hms/scankit/p/qc;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/qc;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lcom/huawei/hms/scankit/p/qc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/huawei/hms/scankit/p/qc;->d:Lcom/huawei/hms/scankit/p/qc;

    const/4 v8, 0x4

    new-array v9, v8, [Lcom/huawei/hms/scankit/p/qc;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    .line 5
    sput-object v9, Lcom/huawei/hms/scankit/p/qc;->f:[Lcom/huawei/hms/scankit/p/qc;

    new-array v8, v8, [Lcom/huawei/hms/scankit/p/qc;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    .line 6
    sput-object v8, Lcom/huawei/hms/scankit/p/qc;->e:[Lcom/huawei/hms/scankit/p/qc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/huawei/hms/scankit/p/qc;->g:I

    return-void
.end method

.method public static a(I)Lcom/huawei/hms/scankit/p/qc;
    .locals 2

    if-ltz p0, :cond_0

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/p/qc;->e:[Lcom/huawei/hms/scankit/p/qc;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 5
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/qc;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/qc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/qc;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/qc;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/qc;->f:[Lcom/huawei/hms/scankit/p/qc;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/qc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/qc;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/qc;->g:I

    return v0
.end method
