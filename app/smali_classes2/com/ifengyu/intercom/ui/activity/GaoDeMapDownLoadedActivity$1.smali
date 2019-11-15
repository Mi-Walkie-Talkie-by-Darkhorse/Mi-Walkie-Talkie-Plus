.class Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/adapter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/g;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;->a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapDownLoadedActivity;)Lcom/ifengyu/intercom/ui/adapter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/g;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
