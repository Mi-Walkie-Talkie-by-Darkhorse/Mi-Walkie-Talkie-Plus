.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->c:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    iput p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    iget v3, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
