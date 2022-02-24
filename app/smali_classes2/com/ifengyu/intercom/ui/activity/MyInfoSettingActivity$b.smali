.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;
.super Lcom/ifengyu/intercom/g/d/l;
.source "MyInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)Z

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const/4 p2, 0x0

    const v0, 0x7f110109

    const v1, 0x7f08013e

    invoke-virtual {p1, p2, p2, v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZII)V

    return-void
.end method
