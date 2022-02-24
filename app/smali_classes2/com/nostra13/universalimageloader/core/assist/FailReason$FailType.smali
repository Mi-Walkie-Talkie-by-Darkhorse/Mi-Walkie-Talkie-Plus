.class public final enum Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
.super Ljava/lang/Enum;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/FailReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v1, 0x0

    const-string v2, "IO_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 2
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v2, 0x1

    const-string v3, "DECODING_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 3
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v3, 0x2

    const-string v4, "NETWORK_DENIED"

    invoke-direct {v0, v4, v3}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 4
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v4, 0x3

    const-string v5, "OUT_OF_MEMORY"

    invoke-direct {v0, v5, v4}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 5
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 6
    sget-object v7, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .line 1
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0
.end method
