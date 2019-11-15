.class public final enum Lcom/xiaomi/broadcaster/enums/VCSessionState;
.super Ljava/lang/Enum;
.source "VCSessionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/broadcaster/enums/VCSessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateEnded:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateError:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateNeedReConnect:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateNone:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStatePreviewStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

.field public static final enum VCSessionStateStarting:Lcom/xiaomi/broadcaster/enums/VCSessionState;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateNone"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateNone:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStatePreviewStarted"

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStatePreviewStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateStarting"

    invoke-direct {v0, v1, v6, v6}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateStarting:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateStarted"

    invoke-direct {v0, v1, v7, v7}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateEnded"

    invoke-direct {v0, v1, v8, v8}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateEnded:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateError"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateError:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const-string v1, "VCSessionStateNeedReConnect"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/broadcaster/enums/VCSessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateNeedReConnect:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/broadcaster/enums/VCSessionState;

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateNone:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStatePreviewStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateStarting:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateStarted:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateEnded:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateError:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateNeedReConnect:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCSessionState;

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

    iput p3, p0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/broadcaster/enums/VCSessionState;
    .locals 6

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCSessionState;->VCSessionStateNone:Lcom/xiaomi/broadcaster/enums/VCSessionState;

    invoke-static {}, Lcom/xiaomi/broadcaster/enums/VCSessionState;->values()[Lcom/xiaomi/broadcaster/enums/VCSessionState;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/xiaomi/broadcaster/enums/VCSessionState;->ordinal()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/broadcaster/enums/VCSessionState;
    .locals 1

    const-class v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/broadcaster/enums/VCSessionState;
    .locals 1

    sget-object v0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCSessionState;

    invoke-virtual {v0}, [Lcom/xiaomi/broadcaster/enums/VCSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/broadcaster/enums/VCSessionState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/broadcaster/enums/VCSessionState;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
