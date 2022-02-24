.class Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;
.super Ljava/lang/Object;
.source "LiteChannelSettingActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/lite/base/recycler/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/lite/base/recycler/c$a<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;->a:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Landroid/app/Activity;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;->a(Landroid/view/View;ILcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method
