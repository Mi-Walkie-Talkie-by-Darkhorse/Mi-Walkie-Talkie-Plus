.class Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;
.super Ljava/lang/Object;
.source "QuestionFeedbackActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v2, 0x7f0900b8

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v2, 0x7f0900c2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    const v2, 0x7f090173

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->c(Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/QuestionFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
