.class public final enum Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field public static final enum LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const/4 v1, 0x0

    const-string v2, "FIFO"

    invoke-direct {v0, v2, v1}, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const/4 v2, 0x1

    const-string v3, "LIFO"

    invoke-direct {v0, v3, v2}, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method
