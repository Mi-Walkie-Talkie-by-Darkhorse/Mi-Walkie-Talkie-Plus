.class Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;
.super Lcom/ifengyu/intercom/g/d/l;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 6
    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f110102

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f080191

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 9
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$b;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$b;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f110101

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    const p1, 0x7f11033f

    .line 12
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 13
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$c;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$c;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f110101

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    const p1, 0x7f11033f

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b$a;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
