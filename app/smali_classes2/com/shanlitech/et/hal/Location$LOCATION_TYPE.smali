.class public final enum Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;
.super Ljava/lang/Enum;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/hal/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOCATION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum BAIDU:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum BD09:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum BG54:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum GCJ02:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum WGS84:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

.field public static final enum XA80:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v1, "WGS84"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->WGS84:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-instance v1, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v4, "GCJ02"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->GCJ02:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-instance v4, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v6, "XA80"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->XA80:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-instance v6, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v8, "BG54"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->BG54:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-instance v8, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v10, "BD09"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->BD09:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-instance v10, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    const-string v12, "BAIDU"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->BAIDU:Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    new-array v12, v13, [Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 2
    sput-object v12, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->$VALUES:[Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

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
    iput p3, p0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->$VALUES:[Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    invoke-virtual {v0}, [Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/hal/Location$LOCATION_TYPE;->value:I

    return v0
.end method
