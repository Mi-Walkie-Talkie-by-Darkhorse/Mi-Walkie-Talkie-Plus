.class public final enum Lcom/huawei/hms/scankit/p/Aa$b;
.super Ljava/lang/Enum;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/Aa$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/Aa$b;

.field public static final enum b:Lcom/huawei/hms/scankit/p/Aa$b;

.field public static final enum c:Lcom/huawei/hms/scankit/p/Aa$b;

.field public static final enum d:Lcom/huawei/hms/scankit/p/Aa$b;

.field public static final enum e:Lcom/huawei/hms/scankit/p/Aa$b;

.field private static final synthetic f:[Lcom/huawei/hms/scankit/p/Aa$b;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Aa$b;

    const-string v1, "CAMERA_CLOSED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/Aa$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->a:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Aa$b;

    const-string v4, "CAMERA_OPENED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/huawei/hms/scankit/p/Aa$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 3
    new-instance v4, Lcom/huawei/hms/scankit/p/Aa$b;

    const-string v6, "CAMERA_INITIALED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/huawei/hms/scankit/p/Aa$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/scankit/p/Aa$b;->c:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 4
    new-instance v6, Lcom/huawei/hms/scankit/p/Aa$b;

    const-string v8, "PREVIEW_STARTED"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/huawei/hms/scankit/p/Aa$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/huawei/hms/scankit/p/Aa$b;->d:Lcom/huawei/hms/scankit/p/Aa$b;

    .line 5
    new-instance v8, Lcom/huawei/hms/scankit/p/Aa$b;

    const-string v10, "PREVIEW_STOPPED"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/huawei/hms/scankit/p/Aa$b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/huawei/hms/scankit/p/Aa$b;->e:Lcom/huawei/hms/scankit/p/Aa$b;

    new-array v10, v11, [Lcom/huawei/hms/scankit/p/Aa$b;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Lcom/huawei/hms/scankit/p/Aa$b;->f:[Lcom/huawei/hms/scankit/p/Aa$b;

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
    iput p3, p0, Lcom/huawei/hms/scankit/p/Aa$b;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Aa$b;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/Aa$b;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/Aa$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/Aa$b;->f:[Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/Aa$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/Aa$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/Aa$b;->g:I

    return v0
.end method
