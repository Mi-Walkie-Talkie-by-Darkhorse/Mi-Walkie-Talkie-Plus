.class final enum Lcom/shenma/speechrecognition/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/shenma/speechrecognition/g;

.field public static final enum b:Lcom/shenma/speechrecognition/g;

.field public static final enum c:Lcom/shenma/speechrecognition/g;

.field private static final synthetic d:[Lcom/shenma/speechrecognition/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/shenma/speechrecognition/g;

    const-string v1, "STATE_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/shenma/speechrecognition/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    new-instance v0, Lcom/shenma/speechrecognition/g;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/shenma/speechrecognition/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    new-instance v0, Lcom/shenma/speechrecognition/g;

    const-string v1, "STATE_BUSY"

    invoke-direct {v0, v1, v4}, Lcom/shenma/speechrecognition/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shenma/speechrecognition/g;

    sget-object v1, Lcom/shenma/speechrecognition/g;->a:Lcom/shenma/speechrecognition/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/shenma/speechrecognition/g;->b:Lcom/shenma/speechrecognition/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shenma/speechrecognition/g;->c:Lcom/shenma/speechrecognition/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/shenma/speechrecognition/g;->d:[Lcom/shenma/speechrecognition/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shenma/speechrecognition/g;
    .locals 1

    const-class v0, Lcom/shenma/speechrecognition/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/shenma/speechrecognition/g;

    return-object v0
.end method

.method public static values()[Lcom/shenma/speechrecognition/g;
    .locals 1

    sget-object v0, Lcom/shenma/speechrecognition/g;->d:[Lcom/shenma/speechrecognition/g;

    invoke-virtual {v0}, [Lcom/shenma/speechrecognition/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shenma/speechrecognition/g;

    return-object v0
.end method
