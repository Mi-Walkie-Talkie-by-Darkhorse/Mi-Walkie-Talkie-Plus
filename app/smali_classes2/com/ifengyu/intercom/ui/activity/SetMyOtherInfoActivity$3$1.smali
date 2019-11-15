.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;
.super Ljava/lang/Object;
.source "SetMyOtherInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->finish()V

    return-void
.end method
