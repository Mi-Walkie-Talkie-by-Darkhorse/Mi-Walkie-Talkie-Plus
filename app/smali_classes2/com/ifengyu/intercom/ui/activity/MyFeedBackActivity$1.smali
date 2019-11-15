.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;
.super Lcom/ifengyu/intercom/a/b/j;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/bean/FeedBackBean;

    invoke-direct {v3}, Lcom/ifengyu/intercom/bean/FeedBackBean;-><init>()V

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/ifengyu/intercom/bean/FeedBackBean;->feedbackId:I

    const-string v4, "user_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/ifengyu/intercom/bean/FeedBackBean;->userId:I

    const-string v4, "email"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ifengyu/intercom/bean/FeedBackBean;->email:Ljava/lang/String;

    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ifengyu/intercom/bean/FeedBackBean;->message:Ljava/lang/String;

    const-string v4, "updatetime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/ifengyu/intercom/bean/FeedBackBean;->updatetime:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$a;->notifyDataSetChanged()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
