.class Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$a;
.super Landroid/os/Handler;
.source "GaoDeMapDownLoadedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/adapter/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/adapter/g;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/adapter/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
