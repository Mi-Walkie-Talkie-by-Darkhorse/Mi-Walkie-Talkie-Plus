.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;
.super Lcom/ifengyu/intercom/g/d/l;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const p2, 0x7f080189

    const v0, 0x7f1100f6

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    .line 6
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->b:I

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f1100d7

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f080191

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const p2, 0x7f1100f6

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    return-void
.end method
