.class Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;
.super Lcom/ifengyu/library/b/e/a;
.source "SetMyOtherInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    const-string v0, "SetMyOtherInfoActivity"

    const-string v1, "updateSelfInfo fail"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;->J(Lcom/ifengyu/intercom/ui/activity/SetMyOtherInfoActivity;)V

    return-void
.end method
