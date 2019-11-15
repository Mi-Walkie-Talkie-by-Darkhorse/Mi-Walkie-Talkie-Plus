.class public final enum Lcom/xiaomi/player/enums/PlayerSeekingMode;
.super Ljava/lang/Enum;
.source "PlayerSeekingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/player/enums/PlayerSeekingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/player/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingFastMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingNormalMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

.field public static final enum PlayerSeekingPreciseMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;

    const-string v1, "PlayerSeekingNormalMode"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/player/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;

    const-string v1, "PlayerSeekingFastMode"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/player/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingFastMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    new-instance v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;

    const-string v1, "PlayerSeekingPreciseMode"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/player/enums/PlayerSeekingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingPreciseMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/player/enums/PlayerSeekingMode;

    sget-object v1, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingFastMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingPreciseMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->$VALUES:[Lcom/xiaomi/player/enums/PlayerSeekingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/player/enums/PlayerSeekingMode;
    .locals 6

    sget-object v1, Lcom/xiaomi/player/enums/PlayerSeekingMode;->PlayerSeekingNormalMode:Lcom/xiaomi/player/enums/PlayerSeekingMode;

    invoke-static {}, Lcom/xiaomi/player/enums/PlayerSeekingMode;->values()[Lcom/xiaomi/player/enums/PlayerSeekingMode;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/xiaomi/player/enums/PlayerSeekingMode;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/player/enums/PlayerSeekingMode;
    .locals 1

    const-class v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/player/enums/PlayerSeekingMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->$VALUES:[Lcom/xiaomi/player/enums/PlayerSeekingMode;

    invoke-virtual {v0}, [Lcom/xiaomi/player/enums/PlayerSeekingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/player/enums/PlayerSeekingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/player/enums/PlayerSeekingMode;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
