.class Lcom/shenma/speechrecognition/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/shenma/speechrecognition/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shenma/speechrecognition/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shenma/speechrecognition/a;-><init>(Lcom/shenma/speechrecognition/w;)V

    sput-object v0, Lcom/shenma/speechrecognition/x;->a:Lcom/shenma/speechrecognition/a;

    return-void
.end method

.method static synthetic a()Lcom/shenma/speechrecognition/a;
    .locals 1

    invoke-static {}, Lcom/shenma/speechrecognition/x;->b()Lcom/shenma/speechrecognition/a;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/shenma/speechrecognition/a;
    .locals 1

    sget-object v0, Lcom/shenma/speechrecognition/x;->a:Lcom/shenma/speechrecognition/a;

    return-object v0
.end method
