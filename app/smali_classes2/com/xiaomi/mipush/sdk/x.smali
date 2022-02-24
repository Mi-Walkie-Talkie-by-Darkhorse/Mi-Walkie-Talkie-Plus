.class Lcom/xiaomi/mipush/sdk/x;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mipush/sdk/x;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xiaomi/mipush/sdk/x;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/mipush/sdk/x;

    iget-object v0, p1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
