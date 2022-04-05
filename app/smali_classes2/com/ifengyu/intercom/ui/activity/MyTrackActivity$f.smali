.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;
.super Lcom/ifengyu/intercom/g/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const p2, 0x7f080189

    const v0, 0x7f1100f6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->b:I

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const v1, 0x7f1100d7

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const v1, 0x7f080191

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const p2, 0x7f1100f6

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$f;->c:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V

    return-void
.end method
