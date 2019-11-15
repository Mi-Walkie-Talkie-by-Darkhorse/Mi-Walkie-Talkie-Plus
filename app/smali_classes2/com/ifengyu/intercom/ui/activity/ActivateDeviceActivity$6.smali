.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->k()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v0, v1}, Lcom/ifengyu/intercom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/intercom/a/b/b;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$6;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->finish()V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
