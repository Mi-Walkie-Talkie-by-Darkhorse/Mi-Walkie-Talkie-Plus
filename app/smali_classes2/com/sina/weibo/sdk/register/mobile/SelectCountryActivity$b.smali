.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->c:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->a:I

    iput p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->a:I

    iget v2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->b:I

    iget v2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
