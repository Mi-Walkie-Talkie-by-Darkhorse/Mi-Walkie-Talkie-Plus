.class Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;
.super Lcom/ifengyu/intercom/a/b/j;
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Z)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const v1, 0x7f0900db

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->a(ZZII)V

    return-void
.end method
