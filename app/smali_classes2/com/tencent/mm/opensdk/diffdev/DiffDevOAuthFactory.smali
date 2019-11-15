.class public Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_SUPPORTED_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.DiffDevOAuthFactory"

.field public static final VERSION_1:I = 0x1

.field private static v1Instance:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiffDevOAuth()Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->getDiffDevOAuth(I)Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    move-result-object v0

    return-object v0
.end method

.method public static getDiffDevOAuth(I)Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MicroMsg.SDK.DiffDevOAuthFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDiffDevOAuth, version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    const-string v1, "MicroMsg.SDK.DiffDevOAuthFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDiffDevOAuth fail, unsupported version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/diffdev/a/a;-><init>()V

    sput-object v0, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    :cond_1
    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
