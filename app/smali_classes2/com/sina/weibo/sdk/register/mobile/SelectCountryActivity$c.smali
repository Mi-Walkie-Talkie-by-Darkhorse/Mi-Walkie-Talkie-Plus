.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;
.super Landroid/widget/BaseAdapter;
.source "SelectCountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V

    return-void
.end method

.method private a(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;
    .locals 3

    .line 1
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    const-string v1, "\u5e38\u7528"

    const-string v2, "Common"

    invoke-static {p1, v2, v1, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x41

    add-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;

    .line 4
    iget v0, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    aget-object v0, v0, v1

    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;

    const/4 p3, -0x1

    if-nez p2, :cond_1

    .line 2
    iget p2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    if-ne p2, p3, :cond_0

    .line 3
    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object p1

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {p2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object p2

    iget p3, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    aget-object p2, p2, p3

    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/Country;

    .line 5
    new-instance p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    iget-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    if-ne v0, p3, :cond_4

    .line 7
    instance-of p3, p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    if-eqz p3, :cond_3

    .line 8
    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    if-nez p1, :cond_2

    .line 9
    move-object p1, p2

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    iget-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    const-string v0, "\u5e38\u7528"

    const-string v1, "Common"

    invoke-static {p3, v1, v0, v0}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_4
    iget-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-static {p3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object p3

    iget v0, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->a:I

    aget-object p3, p3, v0

    iget p1, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$d;->b:I

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/Country;

    .line 13
    instance-of p3, p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    if-eqz p3, :cond_5

    .line 14
    new-instance p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    iget-object p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$c;->a:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
    move-object p3, p2

    check-cast p3, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
