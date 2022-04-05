.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;
.super Lcom/ifengyu/intercom/g/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->x()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    const-string p2, "MyTrackActivity"

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all track at server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "trackId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deleted"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v6, v5}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    if-nez v3, :cond_4

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const v1, 0x7f1100fc

    const v2, 0x7f08013e

    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDownloadServerFeedbackIDList:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Z)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
