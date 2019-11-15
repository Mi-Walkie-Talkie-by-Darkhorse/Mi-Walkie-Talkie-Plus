.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;
.super Landroid/widget/BaseAdapter;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f04008f

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;)V

    const v0, 0x7f100229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f10022a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/FeedBackBean;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget v4, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->updatetime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v4, "(Android)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v3, "(Android)"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v4, "(iOS)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v2, "(iOS)"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$b;

    move-object v1, v0

    goto :goto_0
.end method
