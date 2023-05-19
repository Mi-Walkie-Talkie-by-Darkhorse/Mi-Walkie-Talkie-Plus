.class Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;
.super Lcom/ifengyu/library/b/e/a;
.source "MyFeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->M(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    const-string p1, "MyFeedBackActivity"

    const-string v0, "deleteFeedBack fail"

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v0, 0x7f110186

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;->G(Lcom/ifengyu/intercom/ui/activity/MyFeedBackActivity;)V

    return-void
.end method
