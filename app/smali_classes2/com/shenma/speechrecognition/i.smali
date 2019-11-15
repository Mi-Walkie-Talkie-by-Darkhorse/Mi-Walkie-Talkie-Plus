.class Lcom/shenma/speechrecognition/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/shenma/speechrecognition/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shenma/speechrecognition/af;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shenma/speechrecognition/af;-><init>(Lcom/shenma/speechrecognition/h;)V

    sput-object v0, Lcom/shenma/speechrecognition/i;->a:Lcom/shenma/speechrecognition/af;

    return-void
.end method

.method static synthetic a()Lcom/shenma/speechrecognition/af;
    .locals 1

    sget-object v0, Lcom/shenma/speechrecognition/i;->a:Lcom/shenma/speechrecognition/af;

    return-object v0
.end method
