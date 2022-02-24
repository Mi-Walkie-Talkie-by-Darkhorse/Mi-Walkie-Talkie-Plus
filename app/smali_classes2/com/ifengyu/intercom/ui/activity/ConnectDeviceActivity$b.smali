.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;
.super Lcom/ifengyu/intercom/g/d/h;
.source "ConnectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/PrivacyInfoBean;I)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/d0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/PrivacyInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a(Lcom/ifengyu/intercom/bean/PrivacyInfoBean;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
