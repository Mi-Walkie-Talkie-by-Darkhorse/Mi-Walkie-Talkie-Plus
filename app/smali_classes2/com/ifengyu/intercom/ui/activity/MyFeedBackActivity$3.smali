.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;
.super Lcom/ifengyu/intercom/a/b/j;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->a(I)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const v3, 0x7f0900c9

    const v2, 0x7f020167

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->b:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    goto :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$3;->c:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    return-void
.end method
