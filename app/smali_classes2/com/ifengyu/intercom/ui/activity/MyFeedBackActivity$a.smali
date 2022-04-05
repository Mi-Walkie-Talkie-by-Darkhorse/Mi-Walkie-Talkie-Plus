.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;
.super Lcom/ifengyu/intercom/g/d/l;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/bean/FeedBackBean;

    invoke-direct {v2}, Lcom/ifengyu/intercom/bean/FeedBackBean;-><init>()V

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->feedbackId:I

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->userId:I

    const-string v3, "email"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->email:Ljava/lang/String;

    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v3, "updatetime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/ifengyu/intercom/bean/FeedBackBean;->updatetime:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$e;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

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

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
