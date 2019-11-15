.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;
.super Lcom/ifengyu/intercom/a/b/j;
.source "MyTrackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errno"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v0, "MyTrackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all track at server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "trackId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "deleted"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0900cf

    const v4, 0x7f020128

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(ZZII)V

    const-string v0, "MyTrackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needDownloadServerFeedbackIDList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$1;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
