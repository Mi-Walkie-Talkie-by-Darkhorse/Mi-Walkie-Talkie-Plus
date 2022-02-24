.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;
.super Lcom/ifengyu/intercom/g/d/l;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "data"

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/ifengyu/intercom/bean/FeedBackBean;

    invoke-direct {v2}, Lcom/ifengyu/intercom/bean/FeedBackBean;-><init>()V

    const-string v3, "id"

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->feedbackId:I

    const-string v3, "user_id"

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->userId:I

    const-string v3, "email"

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->email:Ljava/lang/String;

    const-string v3, "message"

    .line 11
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v3, "updatetime"

    .line 12
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->updatetime:I

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 17
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 20
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)I

    goto :goto_1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
