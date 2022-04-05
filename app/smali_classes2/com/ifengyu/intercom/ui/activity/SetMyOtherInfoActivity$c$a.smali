.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c$a;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
