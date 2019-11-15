.class Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$4;
.super Ljava/lang/Object;
.source "QuestionFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c_()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$4;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->finish()V

    return-void
.end method
