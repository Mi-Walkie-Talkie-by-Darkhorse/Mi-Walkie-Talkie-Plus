.class public final enum Lcom/shanlitech/et/ETStatusCode$LocationType;
.super Ljava/lang/Enum;
.source "ETStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/ETStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/ETStatusCode$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/shanlitech/et/ETStatusCode$LocationType;

.field public static final enum c:Lcom/shanlitech/et/ETStatusCode$LocationType;

.field public static final enum d:Lcom/shanlitech/et/ETStatusCode$LocationType;

.field public static final enum e:Lcom/shanlitech/et/ETStatusCode$LocationType;

.field public static final enum f:Lcom/shanlitech/et/ETStatusCode$LocationType;

.field private static final synthetic g:[Lcom/shanlitech/et/ETStatusCode$LocationType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/shanlitech/et/ETStatusCode$LocationType;

    const-string v1, "WGS84"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/ETStatusCode$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/ETStatusCode$LocationType;->b:Lcom/shanlitech/et/ETStatusCode$LocationType;

    .line 2
    new-instance v1, Lcom/shanlitech/et/ETStatusCode$LocationType;

    const-string v4, "GCJ02"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/shanlitech/et/ETStatusCode$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/ETStatusCode$LocationType;->c:Lcom/shanlitech/et/ETStatusCode$LocationType;

    .line 3
    new-instance v4, Lcom/shanlitech/et/ETStatusCode$LocationType;

    const-string v6, "XA80"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/shanlitech/et/ETStatusCode$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shanlitech/et/ETStatusCode$LocationType;->d:Lcom/shanlitech/et/ETStatusCode$LocationType;

    .line 4
    new-instance v6, Lcom/shanlitech/et/ETStatusCode$LocationType;

    const-string v8, "BG54"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/shanlitech/et/ETStatusCode$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shanlitech/et/ETStatusCode$LocationType;->e:Lcom/shanlitech/et/ETStatusCode$LocationType;

    .line 5
    new-instance v8, Lcom/shanlitech/et/ETStatusCode$LocationType;

    const-string v10, "BD09"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/shanlitech/et/ETStatusCode$LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shanlitech/et/ETStatusCode$LocationType;->f:Lcom/shanlitech/et/ETStatusCode$LocationType;

    new-array v10, v11, [Lcom/shanlitech/et/ETStatusCode$LocationType;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Lcom/shanlitech/et/ETStatusCode$LocationType;->g:[Lcom/shanlitech/et/ETStatusCode$LocationType;

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
    iput p3, p0, Lcom/shanlitech/et/ETStatusCode$LocationType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/ETStatusCode$LocationType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/ETStatusCode$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/ETStatusCode$LocationType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/ETStatusCode$LocationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/ETStatusCode$LocationType;->g:[Lcom/shanlitech/et/ETStatusCode$LocationType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/ETStatusCode$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/ETStatusCode$LocationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/ETStatusCode$LocationType;->a:I

    return v0
.end method
