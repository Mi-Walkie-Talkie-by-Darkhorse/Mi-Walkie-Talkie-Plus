.class Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;
.super Lcom/ifengyu/intercom/a/b/j;
.source "QuestionFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const-wide/16 v2, 0x1f4

    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$2;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d(I)V

    const v0, 0x7f09021c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$3;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->e(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->d(I)V

    const v0, 0x7f09021c

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
