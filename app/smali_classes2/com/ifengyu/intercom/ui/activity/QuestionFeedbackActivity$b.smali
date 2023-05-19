.class Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;
.super Lcom/ifengyu/library/b/e/a;
.source "QuestionFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->H(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "feedBack fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v0, 0x7f11018b

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    const p1, 0x7f1103f5

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/n0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/n0;-><init>(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$b;->c()V

    return-void
.end method
